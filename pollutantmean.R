pollutantmean <- function(directory = "specdata", pollutant, id = 1:332) {
  B <- c()
  if (pollutant == "sulfate") {
    z <- 2
  }
  if (pollutant == "nitrate") {
    z <- 3
  }
  for(i in id) {
    files <- list.files(path="specdata", pattern="*.csv", full.names=TRUE, recursive=FALSE)
    x <- read.csv(files[i])
    column <- x[,z]
    bad <- is.na(column)
    columnG <- column[!bad]
    B <- c(B, columnG)
  }
  print(mean(B))
}