getwd()
setwd("C:/Users/Admin/datasciencecoursera/R Programming")

#dataset_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
#download.file(dataset_url, "specdata.zip")
#unzip("specdata.zip")

list.files("specdata")
directory <- "specdata"
id <- c(2, 4, 8, 10, 12)

#complete <- function(directory, id = 1:332) {
  
  files_list <- list.files(directory, full.names=TRUE)       #creates a list of files
  tmp <- vector(mode = "list", length = length(files_list))
  for (i in seq_along(files_list)) {
    tmp[[i]] <- read.csv(files_list[[i]])
  }
  dat <- do.call(rbind, tmp)
  dat_subset <- dat[which(dat[, "ID"] %in% id),]     #subsets the rows that match the set of selected ids argument
  comp <- complete.cases(dat_subset)
  readydata <- dat_subset[comp,]
  #nobs <- nrow(dat_subset[which(comp[,"ID"] %in% id),])
#loop workings  
  nobs_df <- data.frame(id = id, nobs = 0)
    for(i in id) {
        stepone <- readydata$ID == i
        nobs <- nrow(readydata[stepone,]) 
        nobs_df<- rbind(id = i ,nobs)
    }
#}

#Woking checks
readydata
nobs
nobs_df
stepone <- readydata$ID == 12
nobs[12]<- nrow(readydata[stepone,]) 
nobs_df<-rbind(i,nobs)
stepone
nrow(readydata[stepone,])
readydata[stepone,]
nobs[3] 
nobs_df<- cbind(12 ,nobs)

#DOUBLE LOOP Attempt
#nobs <- numeric(length(readydata))
#for(i in id) {
#  for(j in seq_along(id)){
#   nobs[j] <- nrow(readydata[which(readydata[, "ID"] == i),])
#  }
#}

#Skratch////

nobs
?vector
?data.frame
??add
?cbind
nobs[1] <- nrow(readydata[which(readydata[, "ID"] == 2),]
readydata
nrow(readydata)
nrow(readydata[,"ID" == 1 ])
head(readydata)
tail(readydata)
?seq_len
ans
ans <- numeric()
dat_subset
comp
?nrow
?length
?complete.cases
?which
?count
?rbind
#Test Function here:
#complete(directory = "specdata", id = c(2, 4, 8, 10, 12))
#complete("specdata", 30:25)
#complete("specdata", 3)

#submit()


