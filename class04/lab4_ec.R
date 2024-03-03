source("http://thegrantlab.org/misc/cdc.R")
View(cdc)
head(cdc$height)
tail(cdc$weight, 20)
plot(cdc$height, cdc$weight, xlab = "Weight", ylab = "Height")
cor(cdc$height, cdc$weight)
hist(cdc$height)
hist(cdc$weight)
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.454 #lb to kg
bmi <- (weight_kg)/(height_m^2)
plot(cdc$height, bmi, xlab = "Height", ylab = "BMI")
cdc$bmi <- bmi
numObsese <- sum(cdc$bmi >= 30)
#sum(bmi >= 30)
#sum(cdc$bmi >= 30)
sum(bmi >= 30)/length(bmi)
#cdc[1:100,]
plot(cdc$height[1:100], cdc$weight[1:100])
#cdc[1:100,]$height
#cdc$height[1:100]
obesedf <- cdc[cdc$bmi > 30,]
sum(obesedf$gender == "m")
#obesemaledf <- obesedf[-(cdc$gender == "m")]
