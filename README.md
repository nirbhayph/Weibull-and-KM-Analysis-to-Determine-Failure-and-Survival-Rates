
##Application of Weibull and KM Analysis to Determine Failure and Survival Rates in Automobile Industry using R

This project focuses on the automobile vehicle, automotive component failure detection based on failure modes using Weibull analysis and
other survival analysis techniques. 

Detailed attention is paid to three areas: 

- Overall failure rates are described statistically first, and data cleaning and definitions of ‘failed’ data within spell period are made.

- Kaplan-Meier life curves and Nelson Allen Curve are used to compare the failure mode reliability over time and explore factor related to the vehicle failure.

- Weibull regressions, with three parameters, are applied to fit real-world reliability data from different test conditions to analyze the vehicle failure.

In addition to the above for automotive components failure rate has been plotted (separate plots for sample components) to identify the trend of failure for one year's dataset.

Also you can click [here](https://github.com/nirbhayph/Model-for-Failure-and-Survival-analysis-in-Automobile-Industry-using-R/blob/master/Paper/Paper.pdf) to have a look at the paper for this project.

###Software Requirements

- R

  To install R for your operating system click [here](https://cran.rstudio.com/).
  
- R Studio 
  
  To install R Studio for your operating system click [here](https://www.rstudio.com/products/rstudio/download/).
  
###Package Requirement

- Survival

###To install a package to your computer

- Method 1: Install from source

  Download the add-on R package, say mypkg, and type the following command in Unix console to install it to /my/own/R-packages/:

  $ R CMD INSTALL mypkg -l /my/own/R-packages/

- Method 2: Install from CRAN directly

  Type the following command in R console to install it to /my/own/R-packages/ directly from CRAN:

  install.packages("mypkg", lib="/my/own/R-packages/") 

###To Load the library

- library("mypkg", lib.loc="/my/own/R-packages/")
