complete <- function(directory, id= 1:332){
  setwd(file.path("C:/Users/thana/OneDrive - Thammasat University/Desktop/Bank/Cousera/Data science spacialization/R Course/",directory))
  ldf <- list() # creates a list
  checkID <- list()
  mymean <- 0
  q <- 1
  dataf <- data.frame(DataID = id,nobs = id)
  #dataf
  listcsv <- dir(pattern = "*.csv") # creates the list of all the csv files in the directory
  for (k in id){
    checkID[[q]] <- read.csv(listcsv[k])
    dataf$DataID[q] <- id[q]
    dataf$nobs[q] <- sum(complete.cases(checkID[[q]]))
    #str(id[q])
    #str(sum(complete.cases(checkID[[q]])))
    q <- q + 1
  }
  #ldf <- do.call(rbind, checkID)
  #dataf <- data.frame(DataID = id ,nobs = sum(complete.cases(ldf)))
  dataf
}