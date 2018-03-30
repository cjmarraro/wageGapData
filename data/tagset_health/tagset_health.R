# Set working directory
# setwd()

new_data <- read.table('tagset_health.dat', sep=' ')
names(new_data) <- c('R0000100','R6888900','R7599600')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R6888900 <- factor(data$R6888900, levels=c(1.0,2.0,3.0,4.0,5.0), labels=c("3 times or more each week","Once or twice a week","One to three times each month","Less than once a month","Never"))
  data$R7599600 <- factor(data$R7599600, levels=c(1.0,2.0,3.0,4.0), labels=c("Lose weight","Gain weight","Stay about the same","Not trying to do anything"))
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "FREQUENCY OF HEAVY HOUSEWORK 2000",
    "R TRYING TO LOSE OR GAIN WEIGHT 2002"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","Q11-9G_2000","Q11-GENHLTH_6A_2002")
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
