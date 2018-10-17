library (tidyverse)
titanic <- read_csv("titanic_original.csv")
head(titanic)
str(titanic)
titanic$embarked
View(titanic)

#Port of embarkation - Replace Blank cells with "S"

titanic %>% mutate(embarked = gsub("^$|^ $", "S", embarked) %>%
  gsub("NA", "S", .))


#Age - Populate missing values with mean of age column.
unique(titanic$age)

#Mean Age
mean_age <- mean(titanic$age, na.rm = TRUE)
print(mean_age)

#Replace NA values with mean age
titanic$age[is.na(titanic$age)]<- mean_age
print(mean_age)
is.na(titanic$age) %>% sum()
titanic$age[1:15]
titanic$age[c(TRUE, FALSE)]

#Lifeboat

titanic$boat <- gsub("", NA , titanic$boat)
table(titanic$boat)
isTRUE(TRUE)


#Cabin

titanic <- titanic %>% mutate(has_cabin_number = ifelse(is.na(cabin),1,0))
head(titanic)
titanic$has_cabin_number

is.null(titanic$cabin) %>% sum()
is.na(titanic$cabin) %>% sum()
nrow(titanic)
table(titanic$cabin)      
