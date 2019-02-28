
<!-- README.md is generated from README.Rmd. Please edit that file -->
Statistical Hypothesis Testing in R
===================================

`SHT` was designed to provide a casket of tools for hypothesis testing procedures ranging from classical to modern techniques.

Installation
------------

Currently, `SHT` can only be downloaded via github using following commands,

``` r
## install.packages("devtools")
## library(devtools)
devtools::install_github("kisungyou/SHT")
```

List of Available Tests
-----------------------

We categorized available functions by their object of interest for better navigation.

-   Notations ***x*** and ***y*** refer to samples.
-   Authors are referred by last names. See the help page of each function for complete references.
-   ***k*-sample** means that the test is checking the *homogeneity* across multiple samples.
-   Function naming convention is {`type of test`.`test name`}, or {`type of test`.`year` `authors`}, where there are two or three authors, we took their initials as abbreviation or simply the last name of the first author otherwise.
-   Since *k*-sample test is applicable to the special case of *k* = 2, two functions - **`usek1d`** and **`useknd`** - are provided to extend capabilities of any *k*-sample tests in our package to be applicable for 2-sample testing.

### 0. utilities

| function name | description                                               |
|---------------|-----------------------------------------------------------|
| `usek1d`      | apply *k*-sample test method for two univariate samples   |
| `useknd`      | apply *k*-sample test method for two multivariate samples |

### 1. tests for univariate mean *μ* ∈ ℝ

<table style="width:71%;">
<colgroup>
<col width="11%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>mean1.ttest</code></td>
<td><a href="https://www.jstor.org/stable/2331554">Student (1908)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> {≤, =, ≥} <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.ttest</code></td>
<td><a href="https://www.jstor.org/stable/2331554">Student (1908)</a> &amp; <a href="https://doi.org/10.1093/biomet/34.1-2.28">Welch (1947)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> {≤, =, ≥} <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>meank.anova</code></td>
<td>-</td>
<td align="left"><span class="math inline"><em>μ</em><sub>1</sub> = ⋯ = <em>μ</em><sub><em>k</em></sub></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
</tbody>
</table>

### 2. tests for multivariate mean *μ* ∈ ℝ<sup>*n*</sup>

<table style="width:82%;">
<colgroup>
<col width="22%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>mean1.1931Hotelling</code></td>
<td><a href="https://projecteuclid.org/euclid.aoms/1177732979">Hotelling (1931)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>mean1.1958Dempster</code></td>
<td><a href="https://projecteuclid.org/euclid.aoms/1177706437">Dempster (1958, 1960)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="odd">
<td><code>mean1.1996BS</code></td>
<td><a href="http://www3.stat.sinica.edu.tw/statistica/j6n2/j6n21/j6n21.htm">Bai and Saranadasa (1996)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>mean1.2008SD</code></td>
<td><a href="https://doi.org/10.1016/j.jmva.2006.11.002">Srivastava and Du (2008)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.1931Hotelling</code></td>
<td><a href="https://projecteuclid.org/euclid.aoms/1177732979">Hotelling (1931)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.1958Dempster</code></td>
<td><a href="https://projecteuclid.org/euclid.aoms/1177706437">Dempster (1958, 1960)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.1965Yao</code></td>
<td><a href="https://www.jstor.org/stable/2333819">Yao (1965)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.1980Johansen</code></td>
<td><a href="https://doi.org/10.1093/biomet/67.1.85">Johansen (1980)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.1986NVM</code></td>
<td>Nel and Van der Merwe (1986)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.1996BS</code></td>
<td><a href="http://www3.stat.sinica.edu.tw/statistica/j6n2/j6n21/j6n21.htm">Bai and Saranadasa (1996)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.2004KY</code></td>
<td><a href="https://doi.org/10.1016/j.spl.2003.10.012">Krishnamoorthy and Yu (2004)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.2008SD</code></td>
<td><a href="https://doi.org/10.1016/j.jmva.2006.11.002">Srivastava and Du (2008)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.2011LJW</code></td>
<td>Lopes, Jacob, and Wainwright (2011)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.2014CLX</code></td>
<td>Cai, Liu, and Xia (2014)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>mean2.2014Thulin</code></td>
<td>Thulin (2014)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
<tr class="even">
<td><code>meank.2009ZX</code></td>
<td>Zhang and Xu (2009)</td>
<td align="left"><span class="math inline"><em>μ</em><sub>1</sub> = ⋯ = <em>μ</em><sub><em>k</em></sub></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
<tr class="odd">
<td><code>meank.2019CPH</code></td>
<td><a href="https://doi.org/10.1016/j.jspi.2018.12.002">Cao, Park, and He (2019)</a></td>
<td align="left"><span class="math inline"><em>μ</em><sub>1</sub> = ⋯ = <em>μ</em><sub><em>k</em></sub></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
</tbody>
</table>

### 3. tests for variance *σ*<sup>2</sup>

<table style="width:82%;">
<colgroup>
<col width="22%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>var1.chisq</code></td>
<td>-</td>
<td align="left"><span class="math inline"><em>σ</em><sub><em>x</em></sub><sup>2</sup> {≤, =, ≥} <em>σ</em><sub>0</sub><sup>2</sup></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>var2.F</code></td>
<td>-</td>
<td align="left"><span class="math inline"><em>σ</em><sub><em>x</em></sub><sup>2</sup> {≤, =, ≥} <em>σ</em><sub><em>y</em></sub><sup>2</sup></span> (2-sample)</td>
</tr>
<tr class="odd">
<td><code>vark.1937Bartlett</code></td>
<td>Bartlett (1937)</td>
<td align="left"><span class="math inline"><em>σ</em><sub>1</sub><sup>2</sup> = ⋯ = <em>σ</em><sub><em>k</em></sub><sup>2</sup></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
<tr class="even">
<td><code>vark.1960Levene</code></td>
<td>Levene (1960)</td>
<td align="left"><span class="math inline"><em>σ</em><sub>1</sub><sup>2</sup> = ⋯ = <em>σ</em><sub><em>k</em></sub><sup>2</sup></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
<tr class="odd">
<td><code>vark.1974BF</code></td>
<td>Brown and Forsythe (1974)</td>
<td align="left"><span class="math inline"><em>σ</em><sub>1</sub><sup>2</sup> = ⋯ = <em>σ</em><sub><em>k</em></sub><sup>2</sup></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
</tbody>
</table>

### 4. tests for covariance *Σ*

| function name     | authors                                                               | description of *H*<sub>0</sub>                       |
|-------------------|-----------------------------------------------------------------------|:-----------------------------------------------------|
| `cov2.2012LC`     | [Li and Chen (2012)](https://projecteuclid.org/euclid.aos/1338515142) | *Σ*<sub>*x*</sub> = *Σ*<sub>*y*</sub> (2-sample)     |
| `cov2.2013CLX`    | Cai, Liu, and Xia (2013)                                              | *Σ*<sub>*x*</sub> = *Σ*<sub>*y*</sub> (2-sample)     |
| `covk.2001Schott` | Schott (2001)                                                         | *Σ*<sub>1</sub> = ⋯ = *Σ*<sub>*k*</sub> (*k*-sample) |
| `covk.2007Schott` | Schott (2007)                                                         | *Σ*<sub>1</sub> = ⋯ = *Σ*<sub>*k*</sub> (*k*-sample) |

### 6. distribution tests of normality

<table style="width:82%;">
<colgroup>
<col width="22%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>norm.1965SW</code></td>
<td>Shapiro and Wilk (1965)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="even">
<td><code>norm.1972SF</code></td>
<td>Shapiro and Francia (1972)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="odd">
<td><code>norm.1980JB</code></td>
<td>Jarque and Bera (1980)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="even">
<td><code>norm.1996AJB</code></td>
<td>Urzua (1996)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="odd">
<td><code>norm.2008RJB</code></td>
<td>Gel and Gastwirth (2008)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
</tbody>
</table>

### 7. tests for equality of distributions

| function name   | authors                 | description of *H*<sub>0</sub>                   |
|-----------------|-------------------------|:-------------------------------------------------|
| `eqdist.2014BG` | Biswas and Ghosh (2014) | *F*<sub>*X*</sub> = *F*<sub>*Y*</sub> (2-sample) |

<!---
your comment goes here
and here
| `cov1.mxPBF`  | - | $\Sigma_x = \Sigma_0$ (1-sample) |
| `cov2.mxPBF`    | - | $\Sigma_x = \Sigma_y$ (2-sample) |
| `mean2.mxPBF` | - | $\mu_x = \mu_y$ (2-sample) |
-->
### 5. simultaneous tests for mean *μ* and covariance *Σ*

<table style="width:82%;">
<colgroup>
<col width="22%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>sim1.2017Liu</code></td>
<td>Liu et al. (2017)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub>,  <em>Σ</em><sub><em>x</em></sub> = <em>Σ</em><sub><em>y</em></sub></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>sim2.2018HN</code></td>
<td>Hyodo and Nishiyama (2018)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> = <em>μ</em><sub><em>y</em></sub>,  <em>Σ</em><sub><em>x</em></sub> = <em>Σ</em><sub><em>y</em></sub></span> (2-sample)</td>
</tr>
</tbody>
</table>

### 6. distribution tests of normality

<table style="width:82%;">
<colgroup>
<col width="22%" />
<col width="34%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>function name</th>
<th>authors</th>
<th align="left">description of <span class="math inline"><em>H</em><sub>0</sub></span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>norm.1965SW</code></td>
<td>Shapiro and Wilk (1965)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="even">
<td><code>norm.1972SF</code></td>
<td>Shapiro and Francia (1972)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="odd">
<td><code>norm.1980JB</code></td>
<td>Jarque and Bera (1980)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="even">
<td><code>norm.1996AJB</code></td>
<td>Urzua (1996)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
<tr class="odd">
<td><code>norm.2008RJB</code></td>
<td>Gel and Gastwirth (2008)</td>
<td align="left"><span class="math inline"><em>F</em><sub><em>X</em></sub> = Normal ∈ ℝ<sup>1</sup></span></td>
</tr>
</tbody>
</table>

### 7. tests for equality of distributions

| function name   | authors                 | description of *H*<sub>0</sub>                   |
|-----------------|-------------------------|:-------------------------------------------------|
| `eqdist.2014BG` | Biswas and Ghosh (2014) | *F*<sub>*X*</sub> = *F*<sub>*Y*</sub> (2-sample) |
