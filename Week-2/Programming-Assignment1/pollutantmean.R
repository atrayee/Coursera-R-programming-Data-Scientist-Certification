pollutantmean <- function(directory, pollutant, id = 1:332) {
  full_list <- list.files (directory, full.names = TRUE)
  dat <- data.frame()
  for( i in 1:332) {
    dat <- rbind(dat, read.csv(full_list[i]))
  }
  dat_subset <-subset(dat, ID %in% id);
   mean (dat_subset[[pollutant]], na.rm=TRUE)
}


Answers:
> source("pollutantmean.R")

> pollutantmean("specdata", "sulfate", 1:10)
[1] 4.064128

> pollutantmean("specdata", "nitrate", 70:72)
[1] 1.706047

> pollutantmean("specdata", "nitrate", 23)
[1] 1.280833
