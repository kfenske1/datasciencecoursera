#getwd()
#setwd("C:/Users/Admin/datasciencecoursera/R Programming")
#source("complete.R")
#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

#list.files("specdata")
#directory <- "specdata"
#threshold <- 150


corr <- function(directory = "specdata", threshold = "0") {
  inputData <- complete(directory)
        acceptedMonitors<- inputData[which(inputData[,"nobs"] >= threshold),]
        selectedidsData <- acceptedMonitors[,"id"]

  files_list <- list.files(directory,full.names=TRUE) 
  if(length(selectedidsData) > 0) {         
          #files_list <- list.files(directory, full.names=TRUE)       #creates a list of files
          tmp <- vector(mode = "list", length = length(files_list[selectedidsData]))
                 for (i in seq_along(files_list[selectedidsData])) {
                    tmp[[i]] <- read.csv(files_list[selectedidsData][[i]])
                    }
          dat <- do.call(rbind, tmp)
          comp <- complete.cases(dat)
          compdat <- dat[comp,]
          finalvector <- vector(mode = "list")
          #final_df <- data.frame()
          #(mode = "numeric", length = length(selectedidsData))
          for(i in selectedidsData) {
                    corvector<-cor(compdat[which(compdat[, "ID"] == i),"sulfate"], compdat[which(compdat[, "ID"] == i), "nitrate"], use = "na.or.complete")  
                    ansvector<-cbind(corvector, deparse.level = 0)
          #final_df <- rbind(final_df, corvector, deparse.level = 0)
          finalvector <- cbind(finalvector, ansvector, deparse.level = 0)
          }
          ans <- as.vector(finalvector, mode = "numeric") 
          #final_df 
          #<- as.vector(final_df, mode = "any")     
  } else {
          dud <- vector(mode = "numeric", length = 0)
          dud
  }
}
