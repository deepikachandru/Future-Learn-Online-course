#Filter Other archetype
Archetype_filtered=filter(ArchetypeData, archetype !="Other")

Archetype_filtered

cache('Archetype_filtered')


#Archetype ratio
archetype_ratio=Archetype_filtered %>%
  group_by(archetype) %>%
  summarise(count=n()) 

#Merge
MergedData=merge(Archetype_filtered,Enroll_filtered)
MergedData

cache('MergedData')

#Archetype_merge_ratio
Archetype_merge_ratio=MergedData %>%
  group_by(archetype) %>%
  summarise(count=n()) 
Archetype_merge_ratio

#gender_merge ratio
gender_merge_ratio=MergedData %>%
  group_by(gender) %>%
  summarise(count=n()) 

#Merge country ratio
country_merge_ratio=MergedData %>%
  group_by(country) %>%
  summarise(count=n()) 

country_merge_ratio[order(country_merge_ratio$count,decreasing=TRUE),]

#Evaluation summary
Total_learners=nrow(MergedData)
Archetype_percentage=MergedData %>%
  select(archetype) %>%
  group_by(archetype) %>%
  summarise(count=n()) %>%
  mutate(Archetype_Percentage=count/Total_learners *100) 

female_count=gender_merge_ratio$count[1]
male_count=gender_merge_ratio$count[2]

Female_percentage=MergedData %>%
  select(gender,archetype) %>%
  group_by(gender,archetype) %>%
  summarise(count=n()) %>%
  filter(gender=="female")%>%
  mutate(Female_Percentage=count/female_count *100) 
  
Male_percentage=MergedData %>%
  select(gender,archetype) %>%
  group_by(gender,archetype) %>%
  summarise(count=n()) %>%
  filter(gender=="male")%>%
  mutate(Male_Percentage=count/male_count *100) 

cbind(Archetype_percentage,female_percentage=Female_percentage$Female_Percentage)

Male_percentage[,2:4]



cache('Archetype_filtered')
cache('MergedData')
