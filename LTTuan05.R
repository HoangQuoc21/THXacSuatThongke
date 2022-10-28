#Bai5: Mau Ngau Nhien
#1. Mau ngau nhien va phan phoi chuan

mu = 2
sigma = 2
Y = function() rnorm(1,mu,sigma)
vecY = function(n) replicate(n,Y())
n = 4
MeanY = function() mean(vecY(n))
SampleMeanY = function(m) replicate(m,MeanY())
m = 1000

hist(SampleMeanY(m), freq = 0, breaks = 40)
curve(dnorm(x,mu,sigma/sqrt(n)), col = "blue", lty = 1, lwd = 2, add = T)

#2. Mau ngau nhien co cung phan phoi
size = 10
prob = 0.3

mauX = function(n){
	x = rbinom(n,size,prob)
	sqrt(n)*(mean(x)-3)/sqrt(2.1)
}

Y = function(m) replicate(m,mauX(n))
n = 100
m = 1000
hist(Y(m), freq = 0, breaks = 40)
curve(dnorm(x), col = "blue", lty = 1, lwd = 2, add = T)


n = 10000
hist(Y(m), freq = 0, breaks = 40)
curve(dnorm(x), col = "blue", lty = 1, lwd = 2, add = T)



prob = 0.3
Y = function(n){
	x = rbinom(n,1,prob)
	(mean(x)-prob)*sqrt(n)/sqrt([prob*(1-prob))
}
vecY = function(m) replicate(m, Y(n))
n = 100
m = 1000
hist(vecY(m), freq = 0, breaks = 40)
curve(dnorm(x), col = "blue", lty = 1, lwd = 2, add = T)


Z = function(n){
	x = rbinom(n,1,prob)
	(mean(x)-prob)*sqrt(n)/sqrt(mean(x)*(1-mean(x)))
}
vecZ = function(m) replicate(m,Z(n))
hist(vecZ(m), freq = 0, breaks = 40)
curve(dnorm(x), col = "blue", lty = 1, lwd = 2, add = T)

#BTVN01:



