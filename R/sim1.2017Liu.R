#' One-sample Simultaneous Test of Mean and Covariance by Liu et al. (2017)
#' 
#' Given a multivariate sample \eqn{X}, hypothesized mean \eqn{\mu_0} and covariance \eqn{\Sigma_0}, it tests
#' \deqn{H_0 : \mu_x = \mu_0 \textrm{ and } \Sigma_x = \Sigma_0 \quad vs\quad H_1 : \textrm{ not } H_0}
#' using the procedure by Liu et al. (2017).
#' 
#' @param X an \eqn{(n\times p)} data matrix where each row is an observation.
#' @param mu0 a length-\eqn{p} mean vector of interest.
#' @param Sigma0 a \eqn{(p\times p)} given covariance matrix.
#'
#' @return a (list) object of \code{S3} class \code{htest} containing: \describe{
#' \item{statistic}{a test statistic.}
#' \item{p.value}{\eqn{p}-value \eqn{P(H_0|H_1)} under current setting.}
#' \item{alternative}{alternative hypothesis.}
#' \item{method}{name of the test.}
#' \item{data.name}{name(s) of provided sample data.}
#' }
#'
#' @examples 
#' ## CRAN-purpose small example
#' smallX = matrix(rnorm(10*3),ncol=3)
#' sim1.2017Liu(smallX) # run the test
#' 
#' \donttest{
#' ## empirical Type 1 error 
#' niter   = 1000
#' counter = rep(0,niter)  # record p-values
#' for (i in 1:niter){
#'   X = matrix(rnorm(50*10), ncol=10)
#'   counter[i] = ifelse(sim1.2017Liu(X)$p.value < 0.05, 1, 0)
#' }
#' 
#' ## print the result
#' cat(paste("\n* Example for 'sim1.2017Liu'\n\n",
#' sprintf("* number of rejections   : %d\n",sum(counter)),
#' sprintf("* total number of trials : %d\n",niter),
#' sprintf("* empirical Type 1 error : %.4f\n", sum(counter/niter)),sep=""))
#' }
#' 
#' @references 
#' \insertRef{liu_simultaneous_2017}{SHT}
#'
#'@export
sim1.2017Liu <- function(X, mu0=rep(0,ncol(X)),  Sigma0=diag(ncol(X))){
  ##############################################################
  # PREPROCESSING
  check_nd(X)
  n = nrow(X)
  p = ncol(X)
  y = (p/n)
  
  ##############################################################
  # CENTER AND SCALE PROPERLY
  minusX = matrix(rep(mu0,n), ncol=p, byrow=TRUE)
  scaler = aux_getinvroot(Sigma0)
  Xnew   = (X-minusX)%*%scaler
  
  ##############################################################
  # COMPUTATION
  xbar = as.vector(colMeans(Xnew))
  Sn   = cov(Xnew)*(n-1)/n
  Sdiff = Sn-diag(rep(1,p))
  Tn    = sum(xbar^2) + sum(diag(Sdiff%*%Sdiff))

  bhat = (sum(Xnew^4)/(n*p)) - 3 #beta.hat
  stat.mu0  = (p/n)*(p + bhat + 2)
  stat.sig0 = 4*(y^2)*(y*(2+bhat)+1)
  
  thestat = (Tn-stat.mu0)/sqrt(stat.sig0)
  pvalue  = 2*pnorm(abs(thestat), lower.tail=FALSE)

  ##############################################################
  # REPORT
  hname   = "One-sample Simultaneous Test of Mean and Covariance by Liu et al. (2017)"
  Ha      = "both mean and covariance are not equal to mu0 and Sigma0."

  DNAME = deparse(substitute(X))
  names(thestat) = "statistic"
  res   = list(statistic=thestat, p.value=pvalue, alternative = Ha, method=hname, data.name = DNAME)
  class(res) = "htest"
  return(res)
}

