#creating an edgelist for Season 1
library(friends)
library(dplyr)
#library(sqldf)

#Creating a dataframe
characters <- data.frame(speaker = friends[2], season = friends[3], episode = friends[4], scene = friends[5])
#print(characters)


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


#EdgeList as dataframe; initialized empty, to be filled after
mat = matrix(ncol = 4, nrow = 0)
edges1 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges2 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges3 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges4 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges5 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges6 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges7 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges8 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges9 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])
edges10 <- data.frame(source= mat[,1], target=mat[,2], type=mat[,3], weight=mat[,4])

#split into episodes and scenes using a forLoop



#### Season 1

#numbers of episodes
episodes <- max(characters1[,3])

for(i in 1 : episodes){
  episode <- subset(characters1, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);

    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
  
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges1[nrow(edges1) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges1,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season1", row.names = TRUE)

#### Season 2

episodes <- max(characters2[,3])

for(i in 1 : episodes){
  episode <- subset(characters2, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges2[nrow(edges2) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges2,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season2", row.names = TRUE)


#### Season 3

episodes <- max(characters3[,3])

for(i in 1 : episodes){
  episode <- subset(characters3, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges3[nrow(edges3) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges3,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season3", row.names = TRUE)

#### Season 4

episodes <- max(characters4[,3])

for(i in 1 : episodes){
  episode <- subset(characters4, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges4[nrow(edges4) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges4,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season4", row.names = TRUE)

#### Season 5

episodes <- max(characters5[,3])

for(i in 1 : episodes){
  episode <- subset(characters5, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges5[nrow(edges5) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges5,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season5", row.names = TRUE)

#### Season 6

episodes <- max(characters6[,3])

for(i in 1 : episodes){
  episode <- subset(characters6, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges6[nrow(edges6) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges6,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season6", row.names = TRUE)

#### Season 7

episodes <- max(characters7[,3])

for(i in 1 : episodes){
  episode <- subset(characters7, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges7[nrow(edges7) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges7,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season7", row.names = TRUE)

#### Season 8

episodes <- max(characters8[,3])

for(i in 1 : episodes){
  episode <- subset(characters8, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges8[nrow(edges8) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges8,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season8", row.names = TRUE)

#### Season 9

episodes <- max(characters9[,3])

for(i in 1 : episodes){
  episode <- subset(characters9, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges9[nrow(edges9) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges9,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season9", row.names = TRUE)

#### Season 10

episodes <- max(characters10[,3])

for(i in 1 : episodes){
  episode <- subset(characters10, episode == i );
  scenes <- max(episode[,4]);
  for (j in 1 : scenes){
    scene <- subset(episode, scene == j);
    #deleting the counting Column n 
    scenej <- subset(count(scene, speaker), select = -n);
    
    #print(nrow(scene))
    #print(scenej)
    
    # wir adden jetzt zu Edges1 zeilenweise für jeden char in der szene die anderen chars als targets
    
    for (sourceChar in 1:length(scenej[,1])){
      
      for (targetChar in 1:length(scenej[,1])){
        
        edges10[nrow(edges10) + 1,] = list(scenej[sourceChar,1],scenej[targetChar,1],"undirected",1)
        
      }
      
    }
    
  }
}
write.csv(edges10,"/Users/nicla/Documents/UniJoe/IntroDH_Project/edgelist_Season10", row.names = TRUE)
