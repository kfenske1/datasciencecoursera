getwd()
setwd("C:/Users/Admin/datasciencecoursera/R Programming")
source(complete.R)
#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

list.files("specdata")


corr <- function(directory, threshold = 0) {
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
          final_df <- data.frame()
          #(mode = "numeric", length = length(selectedidsData))
          for(i in selectedidsData) {
                    corvector <-cor(compdat[which(compdat[, "ID"] == i),"sulfate"], compdat[which(compdat[, "ID"] == i), "nitrate"], use = "na.or.complete")  
                    ansvector<- cbind(corvector,deparse.level = 0)
          final_df <- rbind(finalvector, ansvector)
          }
          final_df     
  } else {
          dud <- vector(mode = "numeric", length = 0)
          dud
  }
}
  
  
cr <- corr(directory = "specdata", threshold = 150)
head(cr)
summary(cr)
#cr <- corr("specdata", 400)
#summary(cr)
#cr <- corr("specdata", 5000)
#summary(cr)
#length(cr)
#cr <- corr("specdata")
#summary(cr)
#length(cr)



ansvector
?rbind
length(finalvector)
Ans
corvector
head(compdat)
comp
#cor(compdat[["ID"== i,"sulfate"]], compdat[["ID" == i,"nitrate"]], use = "na.or.complete")
cor(compdat[which(compdat[, "ID"] == 330),"sulfate"], compdat[which(compdat[, "ID"] == 330), "nitrate"], use = "na.or.complete")
ans
Ans
dat["ID" == 2,"nitrate"]
dat[,"sulfate"]
head(dat)
length(selectedidsData) >0
head(selectedidsData)
selectedidsData
files_list[selectedidsData]
files_list
  #for (i in 1:length(files_list)) {
cbind(id = i,nobs)
acceptedMonitors
selectgroupdata
class(numeric())
files_list[selectedidsData]
read.csv(files_list[selectedidsData])
conditiontest<- files_list %in% files_list[selectedidsData]
summary(tmp)
sum(conditiontest)
head(dat)
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
 
  #Loop over one file at a time
  #For each file, read the data for that file, and create a data frame where the NA values are removed
  #For each such data frame take the correlation between sulfate and nitrate 
  #(the *columns* of the data frame, which is a list of observations for that particular pollutant)
  #You now have one number for that file (the correlation value)
  #Do this for all files, one by one, and make a vector of the results.
  




#cr <- corr(directory = "specdata", threshold = 150)
#head(cr)
#summary(cr)
#cr <- corr("specdata", 400)
#summary(cr)
#cr <- corr("specdata", 5000)
#summary(cr)
#length(cr)
#cr <- corr("specdata")
#summary(cr)
#length(cr)



#scratch

>
?cor
?complete.cases
?seq_along
?na.omit
?numeric
?vector
?control
?read.csv



head(acceptedMonitors)
inputData["nobs" > threshold,"id"]
inputData[which(inputData[,"nobs"] >= threshold),]
threshold
head(inputData)
tail(inputData)
acceptedMonitors[, "id"]





