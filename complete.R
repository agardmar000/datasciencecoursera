complete <- function(directory = "specdata", id = 1:332) {
  df <- NULL
  for(i in id) {
    files <- list.files(path="specdata", pattern="*.csv", full.names=TRUE)
    x <- read.csv(files[i])
    x1 <- x[,1]
    x2 <- x[,2]
    x3 <- x[,3]
    x4 <- x[,4]
    good <- complete.cases(x1, x2, x3, x4)
    nobs <- sum(good)
    df <- rbind(df, data.frame(i, nobs))
    
  }
  
}
