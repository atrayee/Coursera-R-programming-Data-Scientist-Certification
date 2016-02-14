complete <- function(directory, id = 1:332) {
  fullfile_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  
  for (i in id) {
    files <- read.csv(fullfile_list[i])
    nobs <- sum(complete.cases(files))
    dat_tmp <- data.frame(i, nobs)
    dat <- rbind(dat, dat_tmp)
  }
  
  colnames(dat) <- c("id", "nobs")
  dat
}

Answers

> source("complete.R")

> complete("specdata", 1)
  id nobs
1  1  117

> complete("specdata", c(2, 4, 8, 10, 12))
  id nobs
1  2 1041
2  4  474
3  8  192
4 10  148
5 12   96

> complete("specdata", 3)
  id nobs
1  3  243
