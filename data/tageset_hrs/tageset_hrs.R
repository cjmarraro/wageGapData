# Set working directory
# setwd()

new_data <- read.table('tageset_hrs.dat', sep=' ')
names(new_data) <- c('R0000100','R0070500','R0337800','R0545600','R0839900','R1087300','R1463000','R1809800','R2171500','R2376300','R2770900','R3012700','R3340100','R3604400','R3954600','R4582900','R5267100','R5912600','R6578200','R7192900','R7879600','T0121900')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R0070500 <- cut(data$R0070500, c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,9999999.0), labels=c("0","1 TO 9","10 TO 19","20 TO 29","30 TO 39","40 TO 49","50 TO 59","60 TO 69","70 TO 79","80 TO 89","90 TO 99","100 TO 9999999: 100+"), right=FALSE)
  data$R0337800 <- cut(data$R0337800, c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,9999999.0), labels=c("0","1 TO 9","10 TO 19","20 TO 29","30 TO 39","40 TO 49","50 TO 59","60 TO 69","70 TO 79","80 TO 89","90 TO 99","100 TO 9999999: 100+"), right=FALSE)
  data$R0545600 <- cut(data$R0545600, c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,9999999.0), labels=c("0","1 TO 9","10 TO 19","20 TO 29","30 TO 39","40 TO 49","50 TO 59","60 TO 69","70 TO 79","80 TO 89","90 TO 99","100 TO 9999999: 100+"), right=FALSE)
  data$R0839900 <- cut(data$R0839900, c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0,9999999.0), labels=c("0","1 TO 9","10 TO 19","20 TO 29","30 TO 39","40 TO 49","50 TO 59","60 TO 69","70 TO 79","80 TO 89","90 TO 99","100 TO 9999999: 100+"), right=FALSE)
  data$R1087300 <- cut(data$R1087300, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R1463000 <- cut(data$R1463000, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R1809800 <- cut(data$R1809800, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R2171500 <- cut(data$R2171500, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R2376300 <- cut(data$R2376300, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R2770900 <- cut(data$R2770900, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R3012700 <- cut(data$R3012700, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R3340100 <- cut(data$R3340100, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R3604400 <- cut(data$R3604400, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R3954600 <- cut(data$R3954600, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9999999.0), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 9999999: 50+"), right=FALSE)
  data$R4582900 <- cut(data$R4582900, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$R5267100 <- cut(data$R5267100, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$R5912600 <- cut(data$R5912600, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$R6578200 <- cut(data$R6578200, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$R7192900 <- cut(data$R7192900, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$R7879600 <- cut(data$R7879600, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  data$T0121900 <- cut(data$T0121900, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "HRS/WK WRKD #1 79",
    "HRS/WK WRKD #1 80",
    "HRS/WK WRKD #1 81",
    "HRS/WK WRKD #1 82",
    "HRS/WK WRKD #1 83",
    "HRS/WK WRKD #1 84",
    "HRS/WK WRKD #1 85",
    "HRS/WK WRKD #1 86",
    "HRS/WK WRKD #1 87",
    "HRS/WK WRKD #1 88",
    "HRS/WK WRKD #1 89",
    "HRS/WK WRKD #1 90",
    "HRS/WK WRKD #1 91",
    "HRS/WK WRKD #1 92",
    "HOURS PER WEEK WORKED 94",
    "HOURS PER WEEK WORKED JOB #1 96",
    "HOURS PER WEEK WORKED L1 1998",
    "HOURS PER WEEK WORKED L1 2000",
    "HOURS PER WEEK WORKED L1 2002",
    "HOURS PER WEEK WORKED L1 2004",
    "HOURS PER WEEK WORKED L1 2006"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","QES1-52A_1979","QES1-52A_1980","QES1-52A_1981","QES1-52A_1982","QES1-52A_1983","QES1-52A_1984","QES1-52A_1985","QES1-52A_1986","QES1-52A_1987","QES1-52A_1988","QES1-52A_1989","QES1-52A_1990","QES1-52A_1991","QES1-52A_1992","QES1-52A_1994","QES1-52A_1996","QES-52A.01_1998","QES-52A.01_2000","QES-52A.01_2002","QES-52A.01_2004","QES-52A.01_2006")
  return(data)
}

********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

************************************************************************************************************
