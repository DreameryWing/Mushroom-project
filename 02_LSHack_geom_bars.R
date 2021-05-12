setwd("C:/Users/User/Desktop")
dset2 <- read.csv('mushrooms V2.0.csv')

b <- dset2[, c('class', 'cap.shape')]

b1 <- data.frame(b %>% count(cap.shape, class))
names(b1)[3] <- 'count'
b1$percent <- c(10.62, 89.38, 100, 46.72, 53.28, 49.37, 50.63, 72.46, 27.54, 100)

install.packages("dplyr")
library("dplyr")
library("ggplot2")
b1%>%
  ggplot(aes(fill=class, x=cap.shape, y=percent))+
   geom_bar(position="dodge" ,stat="identity")+
   scale_fill_manual(values = c("#42f57b", "#d1d1d1"))

#--------------------------------------------------
install.packages("dplyr")
install.packages("ggplot2")

setwd("C:/Users/User/Desktop")
dset2 <- read.csv('mushrooms V2.0.csv')
library("dplyr")
library("ggplot2")

#--------------------------------------------------
#1
table(dset2$cap.shape)
b <- dset2[, c('class', 'cap.shape')]
b1 <- data.frame(b %>% count(cap.shape, class))
names(b1)[3] <- 'count'

b1$percent <- c(10.62, 89.38, 100, 46.72, 53.28, 49.37, 50.63, 72.46, 27.54, 100)

install.packages("dplyr")
install.packages("ggplot2")
library("dplyr")
library("ggplot2")

b1%>%
  ggplot(aes(fill=class, x=cap.shape, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#Liza--------------------------------------------------

#2
table(dset2$cap.surface)
b <- dset2[, c('class', 'cap.surface')]
b1 <- data.frame(b %>% count(cap.surface, class))
names(b1)[3] <- 'count'

b1$percent <- c(32.76, 67.24, 100, 53.64, 46.36, 55.24, 44.76)

b1%>%
  ggplot(aes(fill=class, x=cap.surface, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#3
table(dset2$cap.color)
b <- dset2[, c('class', 'cap.color')]
b1 <- data.frame(b %>% count(cap.color, class))
names(b1)[3] <- 'count'

b1$percent <- c(44.66, 55.34, 71.43, 28.57, 27.27, 72.73, 43.91, 56.09, 100, 61.11, 38.89, 100, 58.4, 41.6, 30.77, 69.23, 62.69, 37.31)

b1%>%
  ggplot(aes(fill=class, x=cap.color, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#4
table(dset2$bruises)
b <- dset2[, c('class', 'bruises')]
b1 <- data.frame(b %>% count(bruises, class))
names(b1)[3] <- 'count'

b1$percent <- c(18.48, 81.52, 69.33, 30.67)

b1%>%
  ggplot(aes(fill=class, x=bruises, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#5
table(dset2$odor)
b <- dset2[, c('class', 'odor')]
b1 <- data.frame(b %>% count(odor, class))
names(b1)[3] <- 'count'

b1$percent <- c(100, 100, 100, 100, 100, 100, 3.4, 96.6, 100, 100)

b1%>%
  ggplot(aes(fill=class, x=odor, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#6
table(dset2$gill.attachment)
b <- dset2[, c('class', 'gill.attachment')]
b1 <- data.frame(b %>% count(gill.attachment, class))
names(b1)[3] <- 'count'

b1$percent <- c(8.57, 91.43, 49.25, 50.75)

b1%>%
  ggplot(aes(fill=class, x=gill.attachment, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#7
table(dset2$gill.spacing)
b <- dset2[, c('class', 'gill.spacing')]
b1 <- data.frame(b %>% count(gill.spacing, class))
names(b1)[3] <- 'count'

b1$percent <- c(55.84, 44.16, 8.54, 91.46)

b1%>%
  ggplot(aes(fill=class, x=gill.spacing, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#8
table(dset2$gill.size)
b <- dset2[, c('class', 'gill.size')]
b1 <- data.frame(b %>% count(gill.size, class))
names(b1)[3] <- 'count'

b1$percent <- c(30.15, 69.85, 88.54, 11.46)

b1%>%
  ggplot(aes(fill=class, x=gill.size, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#Katya--------------------------------------------------

#9
table(dset2$gill.color)
b <- dset2[, c('class', 'gill.color')]
b1 <- data.frame(b %>% count(gill.color, class))
names(b1)[3] <- 'count'

b1$percent <- c(15.69, 84.31, 10.69, 89.31, 100, 72.13, 27.87, 67.02, 32.98, 100, 100, 42.9, 57.1, 9.76, 90.24, 100, 20.47, 79.53, 25.58, 74.42)

b1%>%
  ggplot(aes(fill=class, x=gill.color, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#10
table(dset2$stalk.shape)
b <- dset2[, c('class', 'stalk.shape')]
b1 <- data.frame(b %>% count(stalk.shape, class))
names(b1)[3] <- 'count'

b1$percent <- c(54.04, 45.96, 43.75, 56.25)

b1%>%
  ggplot(aes(fill=class, x=stalk.shape, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#11
table(dset2$stalk.root)
b <- dset2[, c('class', 'stalk.root')]
b1 <- data.frame(b %>% count(stalk.root, class))
names(b1)[3] <- 'count'

b1$percent <- c(49.15, 50.85, 7.91, 92.09, 22.86, 77.14, 70.97, 29.03, 100.0)

b1%>%
  ggplot(aes(fill=class, x=stalk.root, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#12
table(dset2$stalk.surface.above.ring)
b <- dset2[, c('class', 'stalk.surface.above.ring')]
b1 <- data.frame(b %>% count(stalk.surface.above.ring, class))
names(b1)[3] <- 'count'

b1$percent <- c(26.09, 73.91, 33.33, 66.67, 93.93, 6.07, 29.68, 70.32)

b1%>%
  ggplot(aes(fill=class, x=stalk.surface.above.ring, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#13
table(dset2$stalk.surface.below.ring)
b <- dset2[, c('class', 'stalk.surface.below.ring')]
b1 <- data.frame(b %>% count(stalk.surface.below.ring, class))
names(b1)[3] <- 'count'

b1$percent <- c(24.0, 76.0, 26.76, 73.24, 93.75, 6.25, 31.12, 68.88)

b1%>%
  ggplot(aes(fill=class, x=stalk.surface.below.ring, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#14
table(dset2$stalk.color.above.ring)
b <- dset2[, c('class', 'stalk.color.above.ring')]
b1 <- data.frame(b %>% count(stalk.color.above.ring, class))
names(b1)[3] <- 'count'

b1$percent <- c(96.43, 3.57, 100.0, 100.0, 100.0, 100.0, 69.23, 30.77, 100.0, 38.35, 61.65, 100.0)

b1%>%
  ggplot(aes(fill=class, x=stalk.color.above.ring, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#15
table(dset2$stalk.color.below.ring)
b <- dset2[, c('class', 'stalk.color.below.ring')]
b1 <- data.frame(b %>% count(stalk.color.below.ring, class))
names(b1)[3] <- 'count'

b1$percent <- c(87.5, 12.5, 100.0, 100.0, 100.0, 100.0, 69.23, 30.77, 100.0, 38.32, 61.68, 100.0)

b1%>%
  ggplot(aes(fill=class, x=stalk.color.below.ring, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#16
table(dset2$veil.type)
b <- dset2[, c('class', 'veil.type')]
b1 <- data.frame(b %>% count(veil.type, class))
names(b1)[3] <- 'count'

b1$percent <- c(48.2, 51.8)

b1%>%
  ggplot(aes(fill=class, x=veil.type, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#Ilya--------------------------------------------------

#17
table(dset2$veil.color)
b <- dset2[, c('class', 'veil.color')]
b1 <- data.frame(b %>% count(veil.color, class))
names(b1)[3] <- 'count'

b1$percent <- c(100.0, 100.0, 49.32, 50.68, 100.0)

b1%>%
  ggplot(aes(fill=class, x=veil.color, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#18
table(dset2$ring.number)
b <- dset2[, c('class', 'ring.number')]
b1 <- data.frame(b %>% count(ring.number, class))
names(b1)[3] <- 'count'

b1$percent <- c(100.0, 50.85, 49.15, 12.0, 88.0)

b1%>%
  ggplot(aes(fill=class, x=ring.number, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#19
table(dset2$ring.type)
b <- dset2[, c('class', 'ring.type')]
b1 <- data.frame(b %>% count(ring.type, class))
names(b1)[3] <- 'count'

b1$percent <- c(63.69, 36.31, 100.0, 100.0, 100.0, 20.56, 79.44)

b1%>%
  ggplot(aes(fill=class, x=ring.type, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#20
table(dset2$spore.print.color)
b <- dset2[, c('class', 'spore.print.color')]
b1 <- data.frame(b %>% count(spore.print.color, class))
names(b1)[3] <- 'count'

b1$percent <- c(11.97, 88.03, 11.38, 88.62, 100.0, 97.06, 2.94, 100.0, 100.0, 100.0, 75.88, 24.12, 100.0)

b1%>%
  ggplot(aes(fill=class, x=spore.print.color, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#21
table(dset2$population)
b <- dset2[, c('class', 'population')]
b1 <- data.frame(b %>% count(population, class))
names(b1)[3] <- 'count'

b1$percent <- c(100.0, 15.29, 84.71, 100.0, 29.49, 70.51, 70.5, 29.5, 37.85, 62.15)

b1%>%
  ggplot(aes(fill=class, x=population, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))

#--------------------------------------------------

#22
table(dset2$habitat)
b <- dset2[, c('class', 'habitat')]
b1 <- data.frame(b %>% count(habitat, class))
names(b1)[3] <- 'count'

b1$percent <- c(34.45, 65.55, 71.15, 28.85, 12.33, 87.67, 88.11, 11.89, 73.91, 26.09, 100.0, 40.28, 59.72)

b1%>%
  ggplot(aes(fill=class, x=habitat, y=percent))+
  geom_bar(position="dodge" ,stat="identity")+
  scale_fill_manual(values = c("#e74c3c", "#2ecc71"))
