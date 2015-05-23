#getwd()
#setwd("C:/Users/Admin/datasciencecoursera/R Programming")

#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

#list.files("specdata")


pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_list <- list.files(directory, full.names=TRUE)       #creates a list of files
  tmp <- vector(mode = "list", length = length(files_list))
  for (i in seq_along(files_list)) {
    tmp[[i]] <- read.csv(files_list[[i]])
  }
  dat <- do.call(rbind, tmp)
  dat_subset <- dat[which(dat[, "ID"] %in% id),]     #subsets the rows that match the set of selected ids argument
  mean(dat_subset[, pollutant], na.rm=TRUE)          #identifies the mean for the given pollutant 
                                                     #while stripping out the NAs
}

#pollutantmean(directory = "specdata", pollutant = "sulfate", id = 1:10)
#pollutantmean("specdata", "nitrate", 70:72)
#pollutantmean("specdata", "nitrate", 23)


#submit()







