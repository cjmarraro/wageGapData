# Set working directory
# setwd()

new_data <- read.table('tagset_occdesire.dat', sep=' ')
names(new_data) <- c('R0000100','R0172000')

# Handle missing values
  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 

# If there are values not categorized they will be represented as NA
vallabels = function(data) {
  data$R0172000 <- cut(data$R0172000, c(1.0,201.0,260.0,301.0,401.0,580.0,601.0,740.0,801.0,821.0,901.0,980.0,0.0,990.0,995.0,996.0,984.0), labels=c("1 TO 195: 001-195 PROFESSIONAL,TECHNICAL AND KINDRED","201 TO 245: 201-245 MANAGERS,OFFICIALS AND PROPRIETORS","260 TO 285: 260-285 SALES WORKERS","301 TO 395: 301-395 CLERICAL AND KINDRED","401 TO 575: 401-575 CRAFTSMEN,FOREMEN AND KINDRED","580 TO 590: 580-590 ARMED FORCES","601 TO 715: 601-715 OPERATIVES AND KINDRED","740 TO 785: 740-785 LABORERS, EXCEPT FARM","801 TO 802: 801-802 FARMERS AND FARM MANAGERS","821 TO 824: 821-824 FARM LABORERS AND FOREMAN","901 TO 965: 901-965 SERVICE WORKERS, EXCEPT PRIVATE HOUSEHOLD","980 TO 984: 980-984 PRIVATE HOUSEHOLD","0: 00      NONE","990: 990     SAME AS PRESENT JOB","995: 995     DID NOT WORK","996: 996     NEVER WORKED"), right=FALSE)
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "OCC EXPCTNS IN 5 YRS 3-D 79"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","EXP-10A_1979")
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
