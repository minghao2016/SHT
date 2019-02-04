
<!-- README.md is generated from README.Rmd. Please edit that file -->
Statistical Hypothesis Testing in R
===================================

`SHT` was designed to provide a casket of tools for hypothesis testing procedures ranging from classical to modern techniques.

Installation
------------

You can install the released version of SHT from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("SHT")
```

or the development version from github:

``` r
## install.packages("devtools")
## library(devtools)
devtools::install_github("kisungyou/SHT")
```

List of Available Tests
-----------------------

We categorized available functions by their object of interest for better navigation. Notations ***x*** and ***y*** refer to samples. Authors are referred by last names. See the help page of each function for complete references. ***k*-sample** means that the test is checking the *homogeneity* across multiple samples.

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
<td>Student (1908)</td>
<td align="left"><span class="math inline"><em>μ</em><sub><em>x</em></sub> {≤, =, ≥} <em>μ</em><sub>0</sub></span> (1-sample)</td>
</tr>
<tr class="even">
<td><code>mean2.ttest</code></td>
<td>Student (1908) &amp; Welch (1947)</td>
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

| function name          | authors                 | description of *H*<sub>0</sub>                   |
|------------------------|-------------------------|:-------------------------------------------------|
| `mean1.1931Hotelling`  | Hotelling (1931)        | *μ*<sub>*x*</sub> = *μ*<sub>0</sub> (1-sample)   |
| `mean1.1958Dempster`   | Dempster (1958, 1960)   | *μ*<sub>*x*</sub> = *μ*<sub>0</sub> (1-sample)   |
| `mean1.1996Bai`        | Bai & Saranadasa (1996) | *μ*<sub>*x*</sub> = *μ*<sub>0</sub> (1-sample)   |
| `mean1.2008Srivastava` | Srivastava & Du (2008)  | *μ*<sub>*x*</sub> = *μ*<sub>0</sub> (1-sample)   |
| `mean2.1931Hotelling`  | Hotelling (1931)        | *μ*<sub>*x*</sub> = *μ*<sub>*y*</sub> (2-sample) |
| `mean2.1958Dempster`   | Dempster (1958, 1960)   | *μ*<sub>*x*</sub> = *μ*<sub>*y*</sub> (2-sample) |
| `mean2.1996Bai`        | Bai & Saranadasa (1996) | *μ*<sub>*x*</sub> = *μ*<sub>*y*</sub> (2-sample) |
| `mean2.2008Srivastava` | Srivastava & Du (2008)  | *μ*<sub>*x*</sub> = *μ*<sub>*y*</sub> (2-sample) |

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
<td><code>vark.1974Brown</code></td>
<td>Brown &amp; Forsythe (1974)</td>
<td align="left"><span class="math inline"><em>σ</em><sub>1</sub><sup>2</sup> = ⋯ = <em>σ</em><sub><em>k</em></sub><sup>2</sup></span> (<span class="math inline"><em>k</em></span>-sample)</td>
</tr>
</tbody>
</table>