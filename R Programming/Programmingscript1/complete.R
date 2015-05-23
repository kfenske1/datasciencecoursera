getwd()
setwd("C:/Users/Admin/datasciencecoursera/R Programming")

#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

list.files("specdata")
directory <- "specdata"
id <- 1:332


#2nd try

complete <- function(directory, id = 1:332) {

files_list <- list.files(directory,full.names=TRUE) 
    final_df <- data.frame()
        for (i in id) {
              read_files <- read.csv(files_list[i]) 
              nobs<- sum(complete.cases(read_files)) 
              nobs_df<-cbind(id = i,nobs)
              final_df <- rbind(final_df, nobs_df)
            }
    ans<-final_df[which(final_df[,"nobs"]>0), ]
    ans
}

read_files<- read.csv(files_list[286]) 
head(nobs)
<- 
  length(complete.cases(read_files))
  summary(complete.cases(read_files)) 
nobs_df<-cbind(id = ,nobs[which(nobs["nobs"> 0)])
final_df <- rbind(final_df, nobs_df)
nobsnozero
nobs
nobs_df
nobs[which(nobs["nobs">0,],),]
nobs[nobs > 0]
#sum(complete.cases(read_files))
#nobs_df
#Test Function here:
#complete(directory = "specdata", id = c(2, 4, 8, 10, 12))
#complete("specdata", 30:25)
complete("specdata", 3)
complete("specdata", 1:332)
length(read_files)
?complete.cases
