library (tidyverse)
titanic <- read_csv("titanic_original.csv")
head(titanic)
str(titanic)
titanic$embarked
View (titanic)

#Port of embarkation - Replace Blank cells with "S"

titanic %>% mutate(embarked = gsub("^$|^ $", "S", embarked))
titanic %>% mutate(embarked = gsub("NA", "S", embarked))


#Age - Populate missing values with mean of age column.
unique(titanic$age)

#Mean Age
mean_age <- mean(titanic$age, na.rm = TRUE)
print(mean_age)

#Replace NA values with mean age
mean_age <- titanic$age[is.na(titanic$age)]
print (mean_age)

#Lifeboat

titanic$boat <- gsub("^$", "NA", titanic$boat)



#Cabin

titanic$has_cabin_number <- titanic %>% mutate(has_cabin_number = ifelse(titanic$cabin != 'Null',1,0))


