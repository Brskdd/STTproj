library(dplyr)

## Q1. Are men more likely to say yes to another date than women? 
## This is of interest because we are interested to see which gender is more likely to go on another date. 
speedDatingCleanedQ1 <- SpeedDating %>%
  filter(!is.na(DecisionM)) %>%
  filter(!is.na(DecisionF))

## Q2. Which score seems to be the most important for men to want a second date?
## This is of interest as there are lots of categories so which category is the most important to a man wanting another date.
speedDatingCleanedQ2 <- na.omit(SpeedDating)

## Q2. Which score seems to be the most important for women to want a second date?
## This is of interest as there are lots of categories so which category is the most important to a woman wanting another date.
speedDatingCleanedQ2 <- na.omit(SpeedDating)

## Q3. Do larger age gaps affect if either a man or a woman view each other as attractive?
## There are a lot of different age gaps in the data so we are curious if a certain age gap would correlate with either gender viewing the other as less attractive.
speedDatingCleanedQ3 <- SpeedDating %>%
  filter(!is.na(AgeM)) %>%
  filter(!is.na(AgeF))

##Q4. Do people find people they view as attractive to be more fun.
## We are curious about this as we want to know if one person finds another person attractive if that will influence their perspective on how fun the other person is to be around.
speedDatingCleanedQ4 <- SpeedDating %>%
  select(AttractiveM, AttractiveF, FunM, FunF)