# Raw data
EnrollData= data.frame(cyber.security.6_enrolments)
dim(EnrollData)
summary(EnrollData)
head(EnrollData,6)

# Unknown Age_range
nrow(EnrollData[EnrollData$age_range=="Unknown",])

#columns of interest
colnames(EnrollData[7:11])

#Filter Unknown and missing data from age range
Enroll_filtered=filter(EnrollData, gender != "Unknown", country != "Unknown", 
                     age_range != "Unknown", highest_education_level != "Unknown", 
                     employment_status != "Unknown")

#gender ratio
gender_ratio=Enroll_filtered %>%
  group_by(gender) %>%
  summarise(count=n()) 

#country ratio
country_ratio=Enroll_filtered %>%
  group_by(country) %>%
  summarise(count=n()) 

#Top 5 enrolled countries
country_ratio_sort=country_ratio[order(country_ratio$count,decreasing=TRUE),]


cache('Enroll_filtered')



