#getwd()
#setwd("C:/Users/Admin/datasciencecoursera/R Programming")

#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

#list.files("specdata")


#2nd try

#complete <- function(directory, id = 1:332) {

#files_list <- list.files(directory,full.names=TRUE) 
#    final_df <- data.frame()
#        for (i in id) {
#              read_files <- read.csv(files_list[i]) 
#              nobs<- sum(complete.cases(read_files)) 
#              nobs_df<-cbind(id = i,nobs)
#              final_df <- rbind(final_df, nobs_df)
#            }
#    final_df
#}

#Try, after part3 errors

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


#Test Function here:
#complete(directory = "specdata", id = c(2, 4, 8, 10, 12))
#complete("specdata", 30:25)
#complete("specdata", 3)




