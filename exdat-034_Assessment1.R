#Sze File Calculation Operations
#fInfo: File Information
#ramNeeded: Is the total RAM memory needed to read the file in MB
fInfo<-file.info("db/household_power_consumption.txt")
ramNeeded <- 2075259 * 9* 8
ramNeeded <- ramNeeded/ 2^20
print(paste("the File Size is",format(fInfo$size,big.mark = ',' ), "bits", sep = ' '))
print(paste("I am asuming that this file will use", round(ramNeeded, 1), "MB"))
print(" because the total numer of rows are 2,075,259 and we have 9 variable")

#Load the File
econsumption <- read.table(file="household_power_consumption.txt", 
        header = T, sep = ";", stringsAsFactors = F, na.strings = "?",
        colClasses = c("character","character","numeric","numeric",
                       "numeric","numeric","numeric","numeric","numeric"))

#Converting character in to dates
econsumption$Date <- as.Date(econsumption$Date,format = "%d/%m/%Y")
econsumption <- econsumption[econsumption$Date %in% as.Date(c("2007/02/01","2007/02/02")),]