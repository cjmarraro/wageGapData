# Set working directory
# setwd()

new_data <- read.table('tagset_marital.dat', sep=' ')
names(new_data) <- c('R0000100','R0214700','R0214800','R0217501','R0405601','R0618601','R0898401','R1144901','R1520101','R1890801','R2257901','R2445301','R2871000','R3074700','R3401400','R3656800','R4007300','R4418400','R5081400','R5166700','R6479300','R7007000','R7704300','R8496700','T0988500','T2210500','T3108400','T4112900')

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
  data$R0217501 <- factor(data$R0217501, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R0405601 <- factor(data$R0405601, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R0618601 <- factor(data$R0618601, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R0898401 <- factor(data$R0898401, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R1144901 <- factor(data$R1144901, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R1520101 <- factor(data$R1520101, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R1890801 <- factor(data$R1890801, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R2257901 <- factor(data$R2257901, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R2445301 <- factor(data$R2445301, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R2871000 <- factor(data$R2871000, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R3074700 <- factor(data$R3074700, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R3401400 <- factor(data$R3401400, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R3656800 <- factor(data$R3656800, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R4007300 <- factor(data$R4007300, levels=c(0.0,1.0,2.0,3.0,5.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","REMARRIED","WIDOWED"))
  data$R4418400 <- factor(data$R4418400, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("NEVER MARRIED","MARRIED","SEPARATED","DIVORCED","WIDOWED"))
  data$R5081400 <- factor(data$R5081400, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$R5166700 <- factor(data$R5166700, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: NEVER MARRIED","1: MARRIED","2: SEPARATED","3: DIVORCED","6: WIDOWED"))
  data$R6479300 <- factor(data$R6479300, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("Never Married","Married","Separated","Divorced","Widowed"))
  data$R7007000 <- factor(data$R7007000, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("Never Married","Married","Separated","Divorced","Widowed"))
  data$R7704300 <- factor(data$R7704300, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$R8496700 <- factor(data$R8496700, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$T0988500 <- factor(data$T0988500, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$T2210500 <- factor(data$T2210500, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$T3108400 <- factor(data$T3108400, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  data$T4112900 <- factor(data$T4112900, levels=c(0.0,1.0,2.0,3.0,6.0), labels=c("0: 0  NEVER MARRIED","1: 1  MARRIED","2: 2  SEPARATED","3: 3  DIVORCED","6: 6  WIDOWED"))
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "RACL/ETHNIC COHORT /SCRNR 79",
    "SEX OF R 79",
    "MARITAL STATUS 79",
    "MARITAL STATUS 80",
    "MARITAL STATUS 81",
    "MARITAL STATUS 82",
    "MARITAL STATUS 83",
    "MARITAL STATUS 84",
    "MARITAL STATUS 85",
    "MARITAL STATUS 86",
    "MARITAL STATUS 87",
    "MARITAL STATUS 88",
    "MARITAL STATUS 89",
    "MARITAL STATUS 90",
    "MARITAL STATUS 91",
    "MARITAL STATUS 92",
    "MARITAL STATUS 93",
    "MARITAL STATUS 94",
    "MARITAL STATUS 96",
    "MARITAL STATUS 1998",
    "MARITAL STATUS 2000",
    "MARITAL STATUS 2002",
    "MARITAL STATUS 2004",
    "MARITAL STATUS 2006",
    "MARITAL STATUS 2008",
    "MARITAL STATUS 2010",
    "MARITAL STATUS 2012"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","SAMPLE_RACE_1979","SAMPLE_SEX_1979","MARSTAT-KEY_1979","MARSTAT-KEY_1980","MARSTAT-KEY_1981","MARSTAT-KEY_1982","MARSTAT-KEY_1983","MARSTAT-KEY_1984","MARSTAT-KEY_1985","MARSTAT-KEY_1986","MARSTAT-KEY_1987","MARSTAT-KEY_1988","MARSTAT-KEY_1989","MARSTAT-KEY_1990","MARSTAT-KEY_1991","MARSTAT-KEY_1992","MARSTAT-KEY_1993","MARSTAT-KEY_1994","MARSTAT-KEY_1996","MARSTAT-KEY_1998","MARSTAT-KEY_2000","MARSTAT-KEY_2002","MARSTAT-KEY_2004","MARSTAT-KEY_2006","MARSTAT-KEY_2008","MARSTAT-KEY_2010","MARSTAT-KEY_2012")
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
