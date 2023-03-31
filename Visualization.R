#Installing the package
install.packages('lattice')

#Importing the packages
library(lattice)
library(stats)

#Importing the required dataset
dataset = read.csv("Spotify_Youtube.csv")

#Data Visualization
plot(dataset$Liveness,dataset$Views, type = 'p',col = 'blue',xlab="Liveness",ylab="Views",)

stripchart(dataset$Liveness)

hist(dataset$Views,xlab="Views",col = 'Orange')

qqnorm(dataset$Views,type = 'o', col = 'yellow')

bwplot(~Liveness, data = dataset, col = 'violet')

xyplot(Liveness~Likes, data = dataset,type = 'r', col = 'pink')

barchart(Album_type~Likes, data = dataset, col = 'cyan')
