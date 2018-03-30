label define vlR0214700   1 "HISPANIC"  2 "BLACK"  3 "NON-BLACK, NON-HISPANIC"
label values R0214700 vlR0214700
label define vlR0214800   1 "MALE"  2 "FEMALE"
label values R0214800 vlR0214800
label define vlR0328000   0 "0"
label values R0328000 vlR0328000
label define vlR0482600   0 "0"
label values R0482600 vlR0482600
label define vlR0782101   0 "0"
label values R0782101 vlR0782101
label define vlR1024001   0 "0"
label values R1024001 vlR1024001
label define vlR1410701   0 "0"
label values R1410701 vlR1410701
label define vlR1778501   0 "0"
label values R1778501 vlR1778501
label define vlR2141601   0 "0"
label values R2141601 vlR2141601
label define vlR2350301   0 "0"
label values R2350301 vlR2350301
label define vlR2722501   0 "0"
label values R2722501 vlR2722501
label define vlR2971401   0 "0"
label values R2971401 vlR2971401
label define vlR3132600   1 "HIGHER EDUCATIONAL DEGREE"  2 "MORE COURSE WORK OR CLASS"  3 "NEITHER"
label values R3132600 vlR3132600
label define vlR3279401   0 "0"
label values R3279401 vlR3279401
label define vlR3559001   0 "0"
label values R3559001 vlR3559001
label define vlR3897101   0 "0"
label values R3897101 vlR3897101
label define vlR4295101   0 "0"
label values R4295101 vlR4295101
label define vlR5626201   0 "0"
label values R5626201 vlR5626201
label define vlR6364601   0 "0"
label values R6364601 vlR6364601
label define vlR6909701   0 "0"
label values R6909701 vlR6909701
label define vlR7607800   0 "0"
label values R7607800 vlR7607800
label define vlR8316300   0 "0"
label values R8316300 vlR8316300
label define vlT0912400   0 "0"
label values T0912400 vlT0912400
label define vlT3045300   0 "0"
label values T3045300 vlT3045300
label define vlT3977400   0 "0"
label values T3977400 vlT3977400
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */
  /* *start* */
/*
  rename R0000100 CASEID_1979 
  rename R0214700 SAMPLE_RACE_1979 
  rename R0214800 SAMPLE_SEX_1979 
  rename R0328000 INCOME_24_1980   // INCOME-24
  rename R0482600 Q13_5_1981   // Q13-5
  rename R0782101 Q13_5_TRUNC_REVISED_1982   // Q13-5_TRUNC_REVISED
  rename R1024001 Q13_5_TRUNC_REVISED_1983   // Q13-5_TRUNC_REVISED
  rename R1410701 Q13_5_TRUNC_REVISED_1984   // Q13-5_TRUNC_REVISED
  rename R1778501 Q13_5_TRUNC_REVISED_1985   // Q13-5_TRUNC_REVISED
  rename R2141601 Q13_5_TRUNC_REVISED_1986   // Q13-5_TRUNC_REVISED
  rename R2350301 Q13_5_TRUNC_REVISED_1987   // Q13-5_TRUNC_REVISED
  rename R2722501 Q13_5_TRUNC_REVISED_1988   // Q13-5_TRUNC_REVISED
  rename R2971401 Q13_5_TRUNC_REVISED_1989   // Q13-5_TRUNC_REVISED
  rename R3132600 CPS_114_000003_1990   // CPS-114_000003
  rename R3279401 Q13_5_TRUNC_REVISED_1990   // Q13-5_TRUNC_REVISED
  rename R3559001 Q13_5_TRUNC_REVISED_1991   // Q13-5_TRUNC_REVISED
  rename R3897101 Q13_5_TRUNC_REVISED_1992   // Q13-5_TRUNC_REVISED
  rename R4295101 R4295101_REVISED_1993 
  rename R5626201 Q13_5_TRUNC_REVISED_1996   // Q13-5_TRUNC_REVISED
  rename R6364601 Q13_5_TRUNC_REVISED_1998   // Q13-5_TRUNC_REVISED
  rename R6909701 Q13_5_TRUNC_REVISED_2000   // Q13-5_TRUNC_REVISED
  rename R7607800 Q13_5_TRUNC_2002   // Q13-5_TRUNC
  rename R8316300 Q13_5_TRUNC_2004   // Q13-5_TRUNC
  rename T0912400 Q13_5_TRUNC_2006   // Q13-5_TRUNC
  rename T3045300 Q13_5_TRUNC_2010   // Q13-5_TRUNC
  rename T3977400 Q13_5_TRUNC_2012   // Q13-5_TRUNC
*/
  /* *end* */  
/* To convert variable names to lower case use the TOLOWER command 
 *      (type findit tolower and follow the links to install).
 * TOLOWER VARLIST will change listed variables to lower case; 
 *  TOLOWER without a specified variable list will convert all variables in the dataset to lower case
 */
/* tolower */
