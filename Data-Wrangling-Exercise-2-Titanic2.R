library (tidyverse)
titanic <- read_csv("titanic_original.csv")
head(titanic)
str(titanic)
titanic$embarked
View (titanic)

# Task 1: Port of embarkation - Replace Blank cells with "S"

titanic %>% mutate(embarked = gsub("^$|^ $", "S", embarked))
titanic %>% mutate(embarked = gsub("NA", "S", embarked))
View(titanic)

# Task 2: Age - Populate missing values with mean of age column.
unique(titanic$age)

# calculating the mean age
mean_age <- mean(titanic$age, na.rm = TRUE)
print(mean_age)

# replacing NA values with mean age
mean_age <- titanic$age[is.na(titanic$age)]
print(mean_age)

