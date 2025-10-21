# fmt: skip
brfss_codebook <- tribble(
  ~new_column, ~old_column, ~description,
  
  # Identifier
  "ID", "seqno", "Unique respondent identifier",
  "State", "state", "State Value",
  
  # Demographics
  "Sex", "sexvar", "Respondent sex/gender",
  "Marital_Status", "marital", "Marital status",
  "Education_Level", "educa", "Education level completed",
  "Employment_Status", "employ1", "Employment status",
  "Income_Level", "income3", "Household income level",
  "Veteran_Status", "veteran3", "Military veteran status",
  "Number_of_Children", "children", "Number of children in household",
  "Own_or_Rent_Home", "renthom1", "Own or rent primary residence",
  "Birth_Sex", "birthsex", "Sex assigned at birth",
  # "Transgender", "trnsgndr", "Transgender identity",
  
  # Physical measurements
  # "Height_inches", "htin4", "Height in inches",
  # "Height_cm", "htm4", "Height in centimeters",
  # "Weight_kg", "wtkg3", "Weight in kilograms",
  # "Weight_pounds", "weight2", "Weight in pounds",
  # "Height_feet_inches", "height3", "Height in feet and inches",
  "BMI", "bmi5", "Body Mass Index (BMI)",
  # "BMI_Category", "bmi5cat", "BMI category classification",
  
  # General Health & Quality of Life
  "General_Health", "genhlth", "General health status self-assessment",
  "Physical_Health_Days", "physhlth", "Number of days physical health not good in past 30 days",
  "Mental_Health_Days", "menthlth", "Number of days mental health not good in past 30 days",
  "Poor_Health_Days", "poorhlth", "Number of days poor physical or mental health kept you from usual activities",
  
  # Healthcare Access
  "Health_Coverage", "primins1", "Primary health insurance coverage",
  "Personal_Doctor", "persdoc3", "Have personal doctor or healthcare provider",
  "Medical_Cost_Barrier", "medcost1", "Could not see doctor because of cost in past 12 months",
  "Checkup", "checkup1", "Length of time since last routine checkup",
  
  # Physical Activity & Exercise
  "Exercise", "exerany2", "Physical activity or exercise in past 30 days",
  # "Exercise_Type_1", "exract12", "Type of physical activity (first mention)",
  # "Exercise_Type_2", "exract22", "Type of physical activity (second mention)",
  # "Strength_Training", "strength", "Muscle strengthening activities in past 30 days",
  
  # Cardiovascular Health
  "High_Blood_Pressure", "bphigh6", "Ever told you have high blood pressure",
  "BP_Medication", "bpmeds1", "Currently taking blood pressure medication",
  "Cholesterol_Check", "cholchk3", "Ever had cholesterol checked",
  "High_Cholesterol", "toldhi3", "Ever told blood cholesterol is high",
  "Cholesterol_Medication", "cholmed3", "Currently taking cholesterol medication",
  
  # Heart Disease & Stroke
  "Heart_Attack", "cvdinfr4", "Ever diagnosed with heart attack",
  "Heart_Disease", "cvdcrhd4", "Ever diagnosed with coronary heart disease",
  "Stroke", "cvdstrk3", "Ever diagnosed with stroke",
  
  # Respiratory Health
  "Asthma_Ever", "asthma3", "Ever told you had asthma",
  "Asthma_Current", "asthnow", "Still have asthma",
  # "COPD", "chccopd3", "Ever told you have COPD/emphysema/chronic bronchitis",
  
  # Cancer History
  # "Skin_Cancer", "chcscnc1", "Ever told you had skin cancer",
  # "Other_Cancer", "chcocnc1", "Ever told you had any other types of cancer",
  
  # Other Chronic Conditions
  "Depression", "addepev3", "Ever told you have depressive disorder",
  "Kidney_Disease", "chckdny2", "Ever told you have kidney disease",
  "Arthritis", "havarth4", "Ever told you have arthritis/rheumatoid arthritis/gout/lupus/fibromyalgia",
  "Diabetes", "diabete4", "Ever told you have diabetes",
  "Diabetes_Age", "diabage4", "Age when first told you had diabetes",
  # "Prediabetes", "prediab2", "Ever told you have prediabetes or borderline diabetes",
  # "Diabetes_Type", "diabtype", "Type of diabetes",
  # "Insulin_Use", "insulin1", "Are you now taking insulin",
  
  # Pregnancy
  # "Pregnancy_Status", "pregnant", "Are you currently pregnant",
  
  # Disability & Functional Limitations
  "Vision_Difficulty", "blind", "Blind or difficulty seeing even with glasses",
  "Hearing_Difficulty", "deaf", "Deaf or difficulty hearing",
  "Cognitive_Difficulty", "decide", "Difficulty concentrating/remembering/making decisions",
  "Mobility_Difficulty", "diffwalk", "Serious difficulty walking or climbing stairs",
  "Self_Care_Difficulty", "diffdres", "Difficulty dressing or bathing",
  "Independent_Living_Difficulty", "diffalon", "Difficulty doing errands alone due to physical/mental/emotional condition",
  
  # Tobacco Use
  "Smoked_100_Cigarettes", "smoke100", "Smoked at least 100 cigarettes in entire life",
  "Current_Smoking_Status", "smokday2", "Frequency of smoking cigarettes",
  "E_Cigarette_Use", "ecignow2", "Now use e-cigarettes or other electronic vaping products every day or some days",
  "Smokeless_Tobacco", "usenow3", "Use of smokeless tobacco products",
  
  # Alcohol Consumption
  # "Alcohol_Consumption", "alcday4", "Days per week or month had alcoholic beverage in past 30 days",
  "Average_Drinks", "avedrnk3", "Average number of drinks per day when drinking",
  "Binge_Drinking", "drnk3ge5", "Binge drinking frequency in past 30 days",
  # "Max_Drinks", "maxdrnks", "Most drinks on any occasion in past 30 days",
  
  # Preventive Care
  "Flu_Shot", "flushot7", "Adult flu shot/spray past 12 months",
  "Pneumonia_Vaccine", "pneuvac4", "Ever had pneumonia vaccination",
  "Shingles_Vaccine", "shingle2", "Ever had shingles or zoster vaccine",
  # "HIV_Test", "hivtst7", "Ever been tested for HIV",
  # "Tetanus_Vaccine", "tetanus1", "Received tetanus shot in past 10 years",
  
  # Safety Behaviors
  # "Seatbelt_Use", "seatbelt", "How often use seatbelts when driving or riding in car",
  "Drinking_and_Driving", "drnkdri2", "How many times drive when had too much to drink in past 30 days",
  
  # COVID-19 Related
  "COVID_Positive", "covidpo1", "Ever tested positive for COVID-19",
  # "COVID_Symptoms", "covidsm1", "Ever had COVID-19 symptoms",
  # "COVID_Activity_Change", "covidact", "COVID-19 impact on physical activity",
  # "COVID_Vaccine", "covidva1", "Received at least one dose of COVID-19 vaccine",
  
  # Cancer Screening
  # "Mammogram", "hadmam", "Ever had mammogram",
  # "Cervical_Cancer_Screen", "cervscrn", "Ever had cervical cancer screening test",
  # "PSA_Test", "psatest1", "Ever had PSA test",
  # "Colonoscopy", "hadsigm4", "Ever had sigmoidoscopy or colonoscopy",
  # "Sigmoidoscopy", "colnsigm", "Ever had sigmoidoscopy exam",
  
  # Falls & Injury
  "Falls_12_Months", "fall12mn", "How many times did you fall in past 12 months",
  "Fall_Injury", "fallinj5", "Were you injured in a fall in past 12 months",
  
  # Social Determinants
  "Life_Satisfaction", "lsatisfy", "Satisfaction with life",
  "Emotional_Support", "emtsuprt", "How often get social and emotional support needed",
  "Social_Isolation", "sdlonely", "How often feel socially isolated from others",
  "Food_Stamps", "foodstmp", "Received food stamps/SNAP benefits in past 12 months",
  "Food_Security", "sdhfood1", "How often worried food would run out before got money to buy more",
  # "Transportation", "sdhtrnsp", "Delayed/did not get medical care due to transportation in past 12 months",
  
  # Contact/Survey Info
  # "Cell_Phone_Use", "cpdemo1c", "Demographic information about cellular phone usage",
  # "Household_Phones", "numhhol4", "Number of household members"
)

brfss_value_labels <- list(
  # Sex
  Sex = c(
    "1" = "Male",
    "2" = "Female",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Marital Status
  Marital_Status = c(
    "1" = "Married",
    "2" = "Divorced",
    "3" = "Widowed",
    "4" = "Separated",
    "5" = "Never married",
    "6" = "A member of an unmarried couple",
    "9" = "Refused"
  ),

  # Education Level
  Education_Level = c(
    "1" = "Never attended school or only kindergarten",
    "2" = "Grades 1 through 8 (Elementary)",
    "3" = "Grades 9 through 11 (Some high school)",
    "4" = "Grade 12 or GED (High school graduate)",
    "5" = "College 1 year to 3 years (Some college or technical school)",
    "6" = "College 4 years or more (College graduate)",
    "9" = "Refused"
  ),

  # Employment Status
  Employment_Status = c(
    "1" = "Employed for wages",
    "2" = "Self-employed",
    "3" = "Out of work for 1 year or more",
    "4" = "Out of work for less than 1 year",
    "5" = "A homemaker",
    "6" = "A student",
    "7" = "Retired",
    "8" = "Unable to work",
    "9" = "Refused"
  ),

  # Income Level
  Income_Level = c(
    "1" = "Less than $10,000",
    "2" = "Less than $15,000 ($10,000 to less than $15,000)",
    "3" = "Less than $20,000 ($15,000 to less than $20,000)",
    "4" = "Less than $25,000 ($20,000 to less than $25,000)",
    "5" = "Less than $35,000 ($25,000 to less than $35,000)",
    "6" = "Less than $50,000 ($35,000 to less than $50,000)",
    "7" = "Less than $75,000 ($50,000 to less than $75,000)",
    "8" = "Less than $100,000 ($75,000 to less than $100,000)",
    "9" = "Less than $150,000 ($100,000 to less than $150,000)",
    "10" = "Less than $200,000 ($150,000 to less than $200,000)",
    "11" = "$200,000 or more",
    "77" = "Don't know/Not sure",
    "99" = "Refused"
  ),

  # Veteran Status
  Veteran_Status = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Own or Rent Home
  Own_or_Rent_Home = c(
    "1" = "Own",
    "2" = "Rent",
    "3" = "Other arrangement",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Birth Sex
  Birth_Sex = c(
    "1" = "Male",
    "2" = "Female",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Transgender
  Transgender = c(
    "1" = "Yes, transgender, male-to-female",
    "2" = "Yes, transgender, female-to-male",
    "3" = "Yes, transgender, gender nonconforming",
    "4" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # General Health
  General_Health = c(
    "1" = "Excellent",
    "2" = "Very good",
    "3" = "Good",
    "4" = "Fair",
    "5" = "Poor",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Health Coverage
  Health_Coverage = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Personal Doctor
  Personal_Doctor = c(
    "1" = "Yes, only one",
    "2" = "More than one",
    "3" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Medical Cost Barrier
  Medical_Cost_Barrier = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Checkup
  Checkup = c(
    "1" = "Within past year (anytime less than 12 months ago)",
    "2" = "Within past 2 years (1 year but less than 2 years ago)",
    "3" = "Within past 5 years (2 years but less than 5 years ago)",
    "4" = "5 or more years ago",
    "7" = "Don't know/Not sure",
    "8" = "Never",
    "9" = "Refused"
  ),

  # Exercise
  Exercise = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Strength Training
  Strength_Training = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # High Blood Pressure
  High_Blood_Pressure = c(
    "1" = "Yes",
    "2" = "Yes, but female told only during pregnancy",
    "3" = "No",
    "4" = "No, pre-hypertension or borderline high blood pressure",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Yes/No variables with missing codes
  BP_Medication = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  High_Cholesterol = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Cholesterol_Medication = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Heart_Attack = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Heart_Disease = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Stroke = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Asthma_Ever = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Asthma_Current = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  COPD = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Skin_Cancer = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Other_Cancer = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Depression = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Kidney_Disease = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Arthritis = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Vision_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Hearing_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Cognitive_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Mobility_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Self_Care_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  Independent_Living_Difficulty = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Diabetes
  Diabetes = c(
    "1" = "Yes",
    "2" = "Yes, but female told only during pregnancy",
    "3" = "No",
    "4" = "No, pre-diabetes or borderline diabetes",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Prediabetes
  Prediabetes = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Diabetes Type
  Diabetes_Type = c(
    "1" = "Type 1",
    "2" = "Type 2",
    "3" = "Other type of diabetes",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Insulin Use
  Insulin_Use = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Pregnancy Status
  Pregnancy_Status = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Smoked 100 Cigarettes
  Smoked_100_Cigarettes = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Current Smoking Status
  Current_Smoking_Status = c(
    "1" = "Every day",
    "2" = "Some days",
    "3" = "Not at all",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # E-Cigarette Use
  E_Cigarette_Use = c(
    "1" = "Every day",
    "2" = "Some days",
    "3" = "Not at all",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Smokeless Tobacco
  Smokeless_Tobacco = c(
    "1" = "Every day",
    "2" = "Some days",
    "3" = "Not at all",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Seatbelt Use
  Seatbelt_Use = c(
    "1" = "Always",
    "2" = "Nearly always",
    "3" = "Sometimes",
    "4" = "Seldom",
    "5" = "Never",
    "7" = "Don't know/Not sure",
    "8" = "Never drive or ride in a car",
    "9" = "Refused"
  ),

  # COVID-19 variables
  COVID_Positive = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  COVID_Symptoms = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  COVID_Vaccine = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Life Satisfaction
  Life_Satisfaction = c(
    "1" = "Very satisfied",
    "2" = "Satisfied",
    "3" = "Dissatisfied",
    "4" = "Very dissatisfied",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Emotional Support
  Emotional_Support = c(
    "1" = "Always",
    "2" = "Usually",
    "3" = "Sometimes",
    "4" = "Rarely",
    "5" = "Never",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Social Isolation
  Social_Isolation = c(
    "1" = "Always",
    "2" = "Usually",
    "3" = "Sometimes",
    "4" = "Rarely",
    "5" = "Never",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),
  # Add these to your brfss_value_labels list in R/brfss_values.R

  # Food Stamps
  Food_Stamps = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Food Security
  Food_Security = c(
    "1" = "Always",
    "2" = "Usually",
    "3" = "Sometimes",
    "4" = "Rarely",
    "5" = "Never",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Flu Shot
  Flu_Shot = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Pneumonia Vaccine
  Pneumonia_Vaccine = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  # Shingles Vaccine
  Shingles_Vaccine = c(
    "1" = "Yes",
    "2" = "No",
    "7" = "Don't know/Not sure",
    "9" = "Refused"
  ),

  Cholesterol_Check = c(
    "1" = "Never",
    "2" = "Within the past year (anytime less than one year ago)",
    "3" = "Within the past 2 years (1 year but less than 2 years ago)",
    "4" = "Within the past 3 years (2 years but less than 3 years ago)",
    "5" = "Within the past 4 years (3 years but less than 4 years ago)",
    "6" = "Within the past 5 years (4 years but less than 5 years ago)",
    "7" = "Don't know/Not sure",
    "8" = "5 or more years ago",
    "9" = "Refused"
  ),

  Missing_Codes = c(
    "77" = "Don't know/Not sure",
    "88" = "None/Not applicable",
    "99" = "Refused"
  )
)

create_value_labels_df <- function(labels_list) {
  labels_df <- map_dfr(names(labels_list), function(var_name) {
    labels <- labels_list[[var_name]]
    tibble(
      variable = var_name,
      value = names(labels),
      label = unname(labels)
    )
  })

  return(labels_df)
}
