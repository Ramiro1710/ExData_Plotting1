getData <- function(){
    DataDir <- "./rawData"
    DataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    DataFilename <- "Data.zip"
    DataDFn <- paste(DataDir, "/", "Data.zip", sep = "")
    dataDir <- "./Data"
    
    if (!file.exists(DataDir)) {
        dir.create(DataDir)
        download.file(url = DataUrl, destfile = DataDFn)
    }

    if (!file.exists(dataDir)) {
        dir.create(dataDir)
        unzip(zipfile = DataDFn, exdir = dataDir)
    }
    rm(list=ls())
    if(!exists("dat")){
        dat <- read.table("Data/household_power_consumption.txt", header = TRUE, sep = ";")
        dat$Date <- dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
        dat <<- dat[dat$Date == as.Date('2007-02-01') | dat$Date == as.Date('2007-02-02'),]
    }
}