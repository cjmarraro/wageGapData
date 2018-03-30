# Set working directory
# setwd()

new_data <- read.table('tagset_ex_occu.dat', sep=' ')
names(new_data) <- c('R0000100','R0170000')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R0170000 <- factor(data$R0170000, levels=c(1.0,2.0,3.0,4.0), labels=c("PRESENT JOB","SOME OCCUPATION","MARRIED, FAMILY","OTHER (SPECIFY)"))
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "WHAT WOULD LIKE TO BE DOING @ 35 79"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","EXP-1_1979")
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
