pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd(file.path("C:/Users/",directory))
  ldf <- list() # creates a list
  checkID <- list()
  mymean <- 0
  q <- 1
  listcsv <- dir(pattern = "*.csv") # creates the list of all the csv files in the directory
  for (k in id){
    checkID[[q]] <- read.csv(listcsv[k])
    q <- q + 1
  }
  ldf <- do.call(rbind, checkID)
  if (pollutant == "sulfate"){
    mymean <- mean(ldf$sulfate, na.rm = TRUE)
  }
  else if (pollutant == "nitrate"){
    mymean <- mean(ldf$nitrate, na.rm = TRUE)
  }
  

  #str(listcsv[5])
  #length(id)
  #mymean / length(id)
  ldf
  mymean
}
