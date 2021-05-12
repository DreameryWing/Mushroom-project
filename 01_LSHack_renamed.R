setwd("C:/Users/User/Desktop")
dset1 <- read.csv('mushrooms V2.0.csv')
write.csv(dset1, file = 'mushrooms V2.0.csv')
new_dset <- read.csv('mushrooms V2.0.csv')

#1
table(dset1$class)
for (i in 1:nrow(dset1)){
  if (dset1$class[i] == 'e'){
    dset1$class[i] <- 'edible'
  }else{
    dset1$class[i] <- 'definitely poisonous'
  }
}

#2
table(dset1$cap.shape)
for (i in 1:nrow(dset1)){
  if (dset1$cap.shape[i] == 'b'){
    dset1$cap.shape[i] <- 'bell'
  }else if (dset1$cap.shape[i] == 'c'){
    dset1$cap.shape[i] <- 'conica'
  }else if (dset1$cap.shape[i] == 'x'){
    dset1$cap.shape[i] <- 'convex'
  }else if (dset1$cap.shape[i] == 'f'){
    dset1$cap.shape[i] <- 'flat'
  }else if (dset1$cap.shape[i] == 'k'){
    dset1$cap.shape[i] <- 'knobbed'
  }else{
    dset1$cap.shape[i] <- 'sunken'
  }
}

#3
table(dset1$cap.surface)
for (i in 1:nrow(dset1)){
  if (dset1$cap.surface[i] == 'f'){
    dset1$cap.surface[i] <- ' fibrous'
  }else if (dset1$cap.surface[i] == 'g'){
    dset1$cap.surface[i] <- 'grooves'
  }else if (dset1$cap.surface[i] == 'y'){
    dset1$cap.surface[i] <- 'scaly'
  }else{
    dset1$cap.surface[i] <- 'smooth'
  }
}

#4
table(dset1$cap.color)
for (i in 1:nrow(dset1)){
  if (dset1$cap.color[i] == 'n'){
    dset1$cap.color[i] <- ' brown'
  }else if (dset1$cap.color[i] == 'b'){
    dset1$cap.color[i] <- 'buff'
  }else if (dset1$cap.color[i] == 'c'){
    dset1$cap.color[i] <- 'cinnamon'
  }else if (dset1$cap.color[i] == 'g'){
    dset1$cap.color[i] <- 'gray'
  }else if (dset1$cap.color[i] == 'r'){
    dset1$cap.color[i] <- 'green'
  }else if (dset1$cap.color[i] == 'p'){
    dset1$cap.color[i] <- 'pink'
  }else if (dset1$cap.color[i] == 'u'){
    dset1$cap.color[i] <- 'purple'
  }else if (dset1$cap.color[i] == 'e'){
    dset1$cap.color[i] <- 'red'
  }else if (dset1$cap.color[i] == 'w'){
    dset1$cap.color[i] <- 'white'
  }else{
    dset1$cap.color[i] <- 'yellow'
  }
}

#5
table(dset1$bruises)
for (i in 1:nrow(dset1)){
  if (dset1$bruises[i] == 't'){
    dset1$bruises[i] <- 'bruises'
  }else{
    dset1$bruises[i] <- 'no'
  }
}

#6
table(dset1$odor)
for (i in 1:nrow(dset1)){
  if (dset1$odor[i] == 'a'){
    dset1$odor[i] <- 'almond'
  }else if (dset1$odor[i] == 'l'){
    dset1$odor[i] <- 'anise'
  }else if (dset1$odor[i] == 'c'){
    dset1$odor[i] <- 'creosote'
  }else if (dset1$odor[i] == 'y'){
    dset1$odor[i] <- 'fishy'
  }else if (dset1$odor[i] == 'f'){
    dset1$odor[i] <- 'foul'
  }else if (dset1$odor[i] == 'm'){
    dset1$odor[i] <- 'musty'
  }else if (dset1$odor[i] == 'n'){
    dset1$odor[i] <- 'none'
  }else if (dset1$odor[i] == 'p'){
    dset1$odor[i] <- 'pungent'
  }else{
    dset1$odor[i] <- 'spicy'
  }
}

#7
table(dset1$gill.attachment)
for (i in 1:nrow(dset1)){
  if (dset1$gill.attachment[i] == 'a'){
    dset1$gill.attachment[i] <- 'attached'
  }else{
    dset1$gill.attachment[i] <- 'free'
  }
}

#8
table(dset1$veil.type)
dset1$veil.type <- 'partial'

#Катя
#1
table(dset1$gill.spacing)
for (i in 1:nrow(dset1)){
  if (dset1$gill.spacing[i] == 'c'){
    dset1$gill.spacing[i] <- 'close'
  }else{
    dset1$gill.spacing[i] <- 'crowded'
  }
}

#2
table(dset1$gill.size)
for (i in 1:nrow(dset1)){
  if (dset1$gill.size[i] == 'b'){
    dset1$gill.size[i] <- 'broad'
  }else{
    dset1$gill.size[i] <- 'narrow'
  }
}

#3
table(dset1$gill.color)
for (i in 1:nrow(dset1)){
  if (dset1$gill.color[i] == 'g'){
    dset1$gill.color[i] <- 'gray'
  }else if (dset1$gill.color[i] == 'p'){
    dset1$gill.color[i] <- 'pink'
  }else if (dset1$gill.color[i] == 'w'){
    dset1$gill.color[i] <- 'white'
  }else if (dset1$gill.color[i] == 'n'){
    dset1$gill.color[i] <- 'brown'
  }else if (dset1$gill.color[i] == 'k'){
    dset1$gill.color[i] <- 'black'
  }else if (dset1$gill.color[i] == 'h'){
    dset1$gill.color[i] <- 'chocolate'
  }else if (dset1$gill.color[i] == 'y'){
    dset1$gill.color[i] <- 'yellow'
  }else if (dset1$gill.color[i] == 'e'){
    dset1$gill.color[i] <- 'red'
  }else if (dset1$gill.color[i] == 'u'){
    dset1$gill.color[i] <- 'purple'
  }else if (dset1$gill.color[i] == 'b'){
    dset1$gill.color[i] <- 'buff'
  }else if (dset1$gill.color[i] == 'r'){
    dset1$gill.color[i] <- 'green'
  }else{
    dset1$gill.color[i] <- 'orange'
  }
}

#4
table(dset1$stalk.shape)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.shape[i] == 'e'){
    dset1$stalk.shape[i] <- 'enlarging'
  }else{
    dset1$stalk.shape[i] <- 'tapering'
  }
}

#5
table(dset1$stalk.root)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.root[i] == 'r'){
    dset1$stalk.root[i] <- 'rooted'
  }else if (dset1$stalk.root[i] == 'e'){
    dset1$stalk.root[i] <- 'equal'
  }else if (dset1$stalk.root[i] == 'c'){
    dset1$stalk.root[i] <- 'club'
  }else if (dset1$stalk.root[i] == 'b'){
    dset1$stalk.root[i] <- 'bulbous'
  }else{
    dset1$stalk.root[i] <- 'missing'
  }
}

#Илья
#1
table(dset1$stalk.surface.above.ring)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.surface.above.ring[i] == 'f'){
    dset1$stalk.surface.above.ring[i] <- 'fibrous'
  }else if (dset1$stalk.surface.above.ring[i] == 'y'){
    dset1$stalk.surface.above.ring[i] <- 'scaly'
  }else if (dset1$stalk.surface.above.ring[i] == 'k'){
    dset1$stalk.surface.above.ring[i] <- 'silky'
  }else{
    dset1$stalk.surface.above.ring[i] <- 'smooth'
  }
}

#2
table(dset1$stalk.surface.below.ring)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.surface.below.ring[i] == 'f'){
    dset1$stalk.surface.below.ring[i] <- 'fibrous'
  }else if (dset1$stalk.surface.below.ring[i] == 'y'){
    dset1$stalk.surface.below.ring[i] <- 'scaly'
  }else if (dset1$stalk.surface.below.ring[i] == 'k'){
    dset1$stalk.surface.below.ring[i] <- 'silky'
  }else{
    dset1$stalk.surface.below.ring[i] <- 'smooth'
  }
}

#3
table(dset1$stalk.color.above.ring)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.color.above.ring[i] == 'n'){
    dset1$stalk.color.above.ring[i] <- 'brown'
  }else if (dset1$stalk.color.above.ring[i] == 'b'){
    dset1$stalk.color.above.ring[i] <- 'buff'
  }else if (dset1$stalk.color.above.ring[i] == 'c'){
    dset1$stalk.color.above.ring[i] <- 'cinnamon'
  }else if (dset1$stalk.color.above.ring[i] == 'g'){
    dset1$stalk.color.above.ring[i] <- 'gray'
  }else if (dset1$stalk.color.above.ring[i] == 'o'){
    dset1$stalk.color.above.ring[i] <- 'orange'
  }else if (dset1$stalk.color.above.ring[i] == 'p'){
    dset1$stalk.color.above.ring[i] <- 'pink'
  }else if (dset1$stalk.color.above.ring[i] == 'e'){
    dset1$stalk.color.above.ring[i] <- 'red'
  }else if (dset1$stalk.color.above.ring[i] == 'w'){
    dset1$stalk.color.above.ring[i] <- 'white'
  }else{
    dset1$stalk.color.above.ring[i] <- 'yellow'
  }
}

#4
table(dset1$stalk.color.below.ring)
for (i in 1:nrow(dset1)){
  if (dset1$stalk.color.below.ring[i] == 'n'){
    dset1$stalk.color.below.ring[i] <- 'brown'
  }else if (dset1$stalk.color.below.ring[i] == 'b'){
    dset1$stalk.color.below.ring[i] <- 'buff'
  }else if (dset1$stalk.color.below.ring[i] == 'c'){
    dset1$stalk.color.below.ring[i] <- 'cinnamon'
  }else if (dset1$stalk.color.below.ring[i] == 'g'){
    dset1$stalk.color.below.ring[i] <- 'gray'
  }else if (dset1$stalk.color.below.ring[i] == 'o'){
    dset1$stalk.color.below.ring[i] <- 'orange'
  }else if (dset1$stalk.color.below.ring[i] == 'p'){
    dset1$stalk.color.below.ring[i] <- 'pink'
  }else if (dset1$stalk.color.below.ring[i] == 'e'){
    dset1$stalk.color.below.ring[i] <- 'red'
  }else if (dset1$stalk.color.below.ring[i] == 'w'){
    dset1$stalk.color.below.ring[i] <- 'white'
  }else{
    dset1$stalk.color.below.ring[i] <- 'yellow'
  }
}

#5
table(dset1$habitat)
for (i in 1:nrow(dset1)){
  if (dset1$habitat[i] == 'g'){
    dset1$habitat[i] <- 'grasses'
  }else if (dset1$habitat[i] == 'l'){
    dset1$habitat[i] <- 'leaves'
  }else if (dset1$habitat[i] == 'm'){
    dset1$habitat[i] <- 'meadows'
  }else if (dset1$habitat[i] == 'p'){
    dset1$habitat[i] <- 'paths'
  }else if (dset1$habitat[i] == 'u'){
    dset1$habitat[i] <- 'urban'
  }else if (dset1$habitat[i] == 'w'){
    dset1$habitat[i] <- 'waste'
  }else{
    dset1$habitat[i] <- 'woods'
  }
}

#Лиза
#1
table(dset1$veil.color)
for (i in 1:nrow(dset1)){
  if (dset1$veil.color[i] == 'n'){
    dset1$veil.color[i] <- 'brown'
  }else if (dset1$veil.color[i] == 'o'){
    dset1$veil.color[i] <- 'orange'
  }else if (dset1$veil.color[i] == 'w'){
    dset1$veil.color[i] <- 'white'
  }else{
    dset1$veil.color[i] <- 'yellow'
  }
}

#2
table(dset1$ring.number)
for (i in 1:nrow(dset1)){
  if (dset1$ring.number[i] == 'n'){
    dset1$ring.number[i] <- 'none'
  }else if (dset1$ring.number[i] == 'o'){
    dset1$ring.number[i] <- 'one'
  }else{
    dset1$ring.number[i] <- 'two'
  }
}

#3
table(dset1$ring.type)
for (i in 1:nrow(dset1)){
  if (dset1$ring.type[i] == 'e'){
    dset1$ring.type[i] <- 'evanescent'
  }else if (dset1$ring.type[i] == 'f'){
    dset1$ring.type[i] <- 'flaring'
  }else if (dset1$ring.type[i] == 'l'){
    dset1$ring.type[i] <- 'large'
  }else if (dset1$ring.type[i] == 'n'){
    dset1$ring.type[i] <- 'none'
  }else{
    dset1$ring.type[i] <- 'pendant'
  }
}

#4
table(dset1$spore.print.color)
for (i in 1:nrow(dset1)){
  if (dset1$spore.print.color[i] == 'b'){
    dset1$spore.print.color[i] <- 'buff'
  }else if (dset1$spore.print.color[i] == 'h'){
    dset1$spore.print.color[i] <- 'chocolate'
  }else if (dset1$spore.print.color[i] == 'k'){
    dset1$spore.print.color[i] <- 'black'
  }else if (dset1$spore.print.color[i] == 'n'){
    dset1$spore.print.color[i] <- 'brown'
  }else if (dset1$spore.print.color[i] == 'o'){
    dset1$spore.print.color[i] <- 'orange'
  }else if (dset1$spore.print.color[i] == 'r'){
    dset1$spore.print.color[i] <- 'green'
  }else if (dset1$spore.print.color[i] == 'u'){
    dset1$spore.print.color[i] <- 'purple'
  }else if (dset1$spore.print.color[i] == 'w'){
    dset1$spore.print.color[i] <- 'white'
  }else{
    dset1$spore.print.color[i] <- 'yellow'
  }
}

#5
table(dset1$population)
for (i in 1:nrow(dset1)){
  if (dset1$population[i] == 'a'){
    dset1$population[i] <- 'abundant'
  }else if (dset1$population[i] == 'c'){
    dset1$population[i] <- 'clustered'
  }else if (dset1$population[i] == 'n'){
    dset1$population[i] <- 'numerous'
  }else if (dset1$population[i] == 's'){
    dset1$population[i] <- 'scattered'
  }else if (dset1$population[i] == 'v'){
    dset1$population[i] <- 'several'
  }else{
    dset1$population[i] <- 'solitary'
  }
}



