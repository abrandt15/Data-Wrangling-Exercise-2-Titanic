library (tidyverse)
titanic <- read_csv("titanic_original.csv")
head(titanic)
str(titanic)
titanic$embarked
View (titanic)

# Task 1: Port of embarkation - Replace Blank cells with "S"

titanic %>% mutate(embarked = gsub("^$|^ $", "S", embarked))
titanic %>% mutate(embarked = gsub("NA", "S", embarked))


# Task 2: Age - Populate missing values with mean of age column.
unique(titanic$age)

# calculating the mean age
mean_age <- mean(titanic$age, na.rm = TRUE)
print(mean_age)

# replacing NA values with mean age
mean_age <- titanic$age[is.na(titanic$age)]
print

# Lifeboat

titanic$boat <- sub("^$", "NA", titanic$boat)
titanic$boat <- as.factor(titanic$boat)


## Cabin

titanic$has_cabin_number <- titanic %>% mutate(has_cabin_number = ifelse(titanic$cabin != 'Null',1,0))



