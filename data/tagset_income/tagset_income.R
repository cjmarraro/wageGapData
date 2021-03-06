# Set working directory
# setwd()

new_data <- read.table('tagset_income.dat', sep=' ')
names(new_data) <- c('R0000100','R0214700','R0214800','R0328000','R0482600','R0782101','R1024001','R1410701','R1778501','R2141601','R2350301','R2722501','R2971401','R3132600','R3279401','R3559001','R3897101','R4295101','R5626201','R6364601','R6909701','R7607800','R8316300','T0912400','T3045300','T3977400')

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
  data$R0328000 <- cut(data$R0328000, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R0482600 <- cut(data$R0482600, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R0782101 <- cut(data$R0782101, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R1024001 <- cut(data$R1024001, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R1410701 <- cut(data$R1410701, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R1778501 <- cut(data$R1778501, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R2141601 <- cut(data$R2141601, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R2350301 <- cut(data$R2350301, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R2722501 <- cut(data$R2722501, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R2971401 <- cut(data$R2971401, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R3132600 <- factor(data$R3132600, levels=c(1.0,2.0,3.0), labels=c("HIGHER EDUCATIONAL DEGREE","MORE COURSE WORK OR CLASS","NEITHER"))
  data$R3279401 <- cut(data$R3279401, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R3559001 <- cut(data$R3559001, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R3897101 <- cut(data$R3897101, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R4295101 <- cut(data$R4295101, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9999999.0), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 9999999: 50000+"), right=FALSE)
  data$R5626201 <- cut(data$R5626201, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$R6364601 <- cut(data$R6364601, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$R6909701 <- cut(data$R6909701, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$R7607800 <- cut(data$R7607800, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$R8316300 <- cut(data$R8316300, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.99999999E8), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 999999999: 50000+"), right=FALSE)
  data$T0912400 <- cut(data$T0912400, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$T3045300 <- cut(data$T3045300, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  data$T3977400 <- cut(data$T3977400, c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0,9.9999999E7), labels=c("0","1 TO 999","1000 TO 1999","2000 TO 2999","3000 TO 3999","4000 TO 4999","5000 TO 5999","6000 TO 6999","7000 TO 7999","8000 TO 8999","9000 TO 9999","10000 TO 14999","15000 TO 19999","20000 TO 24999","25000 TO 49999","50000 TO 99999999: 50000+"), right=FALSE)
  return(data)
}

varlabels <- c(    "ID# (1-12686) 79",
    "RACL/ETHNIC COHORT /SCRNR 79",
    "SEX OF R 79",
    "TOT INC WAGES AND SALRY 79 80 NO",
    "TOT INC WAGES AND SALRY P-C YR 81",
    "TOT INC WAGES AND SALRY P-C YR 82 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 83 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 84 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 85 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 86 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 87 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 88 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 89 (TRUNC)",
    "POSITN CPS PROMO NOT REQ > ED/CLASS 90",
    "TOT INC WAGES AND SALRY P-C YR 90 (TRUNC)",
    "TOT INC WAGES AND SALRY P-C YR 91",
    "TOT INC WAGES AND SALRY P-C YR 92 (TRUNC)",
    "AMT OF R'S WAGES/SALARY/TIPS (PCY) 93 (TRUNC)",
    "AMT OF R'S WAGES/SALARY/TIPS (PCY) 96",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 1998",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2000",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2002",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2004",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2006",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2010",
    "AMT OF RS WAGES/SALARY/TIPS (PCY) 2012"
)

# Use qnames rather than rnums
qnames = function(data) {
  names(data) <- c("CASEID_1979","SAMPLE_RACE_1979","SAMPLE_SEX_1979","INCOME-24_1980","Q13-5_1981","Q13-5_TRUNC_REVISED_1982","Q13-5_TRUNC_REVISED_1983","Q13-5_TRUNC_REVISED_1984","Q13-5_TRUNC_REVISED_1985","Q13-5_TRUNC_REVISED_1986","Q13-5_TRUNC_REVISED_1987","Q13-5_TRUNC_REVISED_1988","Q13-5_TRUNC_REVISED_1989","CPS-114_000003_1990","Q13-5_TRUNC_REVISED_1990","Q13-5_TRUNC_REVISED_1991","Q13-5_TRUNC_REVISED_1992","R4295101_REVISED_1993","Q13-5_TRUNC_REVISED_1996","Q13-5_TRUNC_REVISED_1998","Q13-5_TRUNC_REVISED_2000","Q13-5_TRUNC_2002","Q13-5_TRUNC_2004","Q13-5_TRUNC_2006","Q13-5_TRUNC_2010","Q13-5_TRUNC_2012")
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
