# Set working directory
# setwd()

new_data <- read.table('tagset_age.dat', sep=' ')
names(new_data) <- c('R0000100','R0214700','R0214800','T3966200')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R0214700 <- factor(data$R0214700, levels=c(1.0,2.0,3.0), labels=c("HISPANIC","BLACK","NON-BLACK, NON-HISPANIC"))
  data$R0214800 <- factor(data$R0214800, levels=c(1.0,2.0), labels=c("MALE","FEMALE"))
  data$T3966200 <- cut(data$T3966200, c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0,9.9999999E7), labels=c("0","1 TO 4","5 TO 9","10 TO 14","15 TO 19","20 TO 24","25 TO 29","30 TO 34","35 TO 39","40 TO 44","45 TO 49","50 TO 99999999: 50+"), right=FALSE)
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "RACL/ETHNIC COHORT /SCRNR 79",
    "SEX OF R 79",
    "AGE OF RESPONDENT 2012"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","SAMPLE_RACE_1979","SAMPLE_SEX_1979","Q11-H50-1_2012")
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
