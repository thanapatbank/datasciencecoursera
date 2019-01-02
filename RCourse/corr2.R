corr <- function(mydirectory, threshold = 0) {
  directory <- "C:/Users/R Course/", mydirectory
  temcorr <- function(filename) {
    data <- read.csv(file.path(directory, filename))
    nobs <- sum(complete.cases(data))
    if (nobs > threshold) {
      return (cor(data$nitrate, data$sulfate, use="complete.obs"))
    }
  }
  fcorr <- sapply(list.files(directory), temcorr) #get all correlations + NULLs
  fcorr <- unlist(fcorr[!sapply(fcorr, is.null)]) #remove NULLs
  fcorr
}
