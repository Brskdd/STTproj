library(dplyr)
#HEAD
View(SpeedDating)

load("SpeedDating.rda")


# >>>>>>> 7cf263c8dc2666e25f97ef4c9a65f205f984449f
## Q1. Are men more likely to say yes to another date than women? 
## This is of interest because we are interested to see which gender is more likely to go on another date. 
speedDatingCleanedQ1 <- SpeedDating %>%
  filter(!is.na(DecisionM)) %>%
  filter(!is.na(DecisionF)) %>%
  select(DecisionM, DecisionF)

## Q2. Which score seems to be the most important for a man's Like score?
## This is of interest as there are lots of categories so which category is the most important to a man liking the woman.
speedDatingCleanedQ2 <- na.omit(SpeedDating)
speedDatingCleanedQ2M <- speedDatingCleanedQ2 %>%
  select(DecisionM, LikeM, PartnerYesM, AgeM, RaceM, AttractiveM, SincereM, IntelligentM, FunM, AmbitiousM, SharedInterestsM)

## Q2. Which score seems to be the most important for a woman's Like score?
## This is of interest as there are lots of categories so which category is the most important to a woman liking the man.
speedDatingCleanedQ2 <- na.omit(SpeedDating)
speedDatingCleanedQ2F <- speedDatingCleanedQ2 %>%
  select(DecisionF, LikeF, PartnerYesF, AgeF, RaceF, AttractiveF, SincereF, IntelligentF, FunF, AmbitiousF, SharedInterestsF)

#<<<<<<< HEAD
## Q3. Do larger age gaps affect if either a man or a woman want another date?
## There are a lot of different age gaps in the data so we are curious if a certain age gap would correlate with either gender saying no to another date.
speedDatingCleanedQ4 <- SpeedDating %>%
#=======
## Q3. Do larger age gaps affect if either a man or a woman view each other as attractive?
## There are a lot of different age gaps in the data so we are curious if a certain age gap would correlate with either gender viewing the other as less attractive.
speedDatingCleanedQ3 <- SpeedDating %>%
#>>>>>>> 7cf263c8dc2666e25f97ef4c9a65f205f984449f
  filter(!is.na(AgeM)) %>%
  filter(!is.na(AgeF)) %>%
  select(AgeM, AgeF, AttractiveM, AttractiveF)

#<<<<<<< HEAD
##Q4. Does ____  score affect the other scores 
#=======
##Q4. Do people find people they view as attractive to be more fun.
## We are curious about this as we want to know if one person finds another person attractive if that will influence their perspective on how fun the other person is to be around.
speedDatingCleanedQ4 <- SpeedDating %>%
  select(AttractiveM, AttractiveF, FunM, FunF)
#>>>>>>> 7cf263c8dc2666e25f97ef4c9a65f205f984449f
