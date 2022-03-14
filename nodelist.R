#creating an nodelist for Season 1
library(friends)
library(dplyr)
#library(sqldf)

#Creating a dataframe
characters <- data.frame(speaker = friends[2] , season = friends[3])
print(characters)

#split into seasons
characters1 <- subset(characters, season ==1) 
characters2 <- subset(characters, season ==2) 
characters3 <- subset(characters, season ==3) 
characters4 <- subset(characters, season ==4) 
characters5 <- subset(characters, season ==5) 
characters6 <- subset(characters, season ==6) 
characters7 <- subset(characters, season ==7) 
characters8 <- subset(characters, season ==8) 
characters9 <- subset(characters, season ==9) 
characters10 <- subset(characters, season ==10) 

#distinction of characters = speaker and counting amountOfSpeech = n

amountOfSpeech1 <- count(characters1, speaker) 
#order by amountOfSpeech
amountOfSpeech1 [order(-amountOfSpeech1$n),]
print(amountOfSpeech1)

#remove SceneDirections etc
nodes1 <- amountOfSpeech1[-c(1, 2, 6, 17, 18, 26, 95, 97, 102, 103, 109),]
print(nodes1)


# adding IDs
#amountOfSpeech1 %>% rowid("id")

#exporting as csv
write.csv(nodes1, "/home/anna/Schreibtisch/IntroToDH-WiSe21-22/Final_Project/DATA/nodes1.csv", row.names = TRUE)



