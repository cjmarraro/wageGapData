# Set working directory
# setwd()

new_data <- read.table('tagset_gradcol.dat', sep=' ')
names(new_data) <- c('R0000100','R1907600')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R1907600 <- cut(data$R1907600, c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0,9999999.0), labels=c("0","1 TO 24","25 TO 49","50 TO 74","75 TO 99","100 TO 124","125 TO 149","150 TO 174","175 TO 199","200 TO 224","225 TO 249","250 TO 9999999: 250+"), right=FALSE)
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "CRDT HRS EARNED @ M-RCNT COLL ATND 86"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","Q3-25.01_1986")
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
