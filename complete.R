complete <- function(directory = "specdata", id = 1:332) {
  for(i in id) {
    files <- list.files(path="specdata", pattern="*.csv", full.names=TRUE, recursive=FALSE)
    x <- read.csv(files[i])
    x1 <- x[,1]
    x2 <- x[,2]
    x3 <- x[,3]
    x4 <- x[,4]
    good <- complete.cases(x1, x2, x3, x4)
    sum <- sum(good)
    print(sum)
  }
}
