#Bai01
#Tao mau 35 gia tru cua bien ngau nhien X ~ N(10;5^2)
n = 35
x = rnorm(n,10,5);x

#Tim KTC 95% cho ky vong, alpha = 5%
x.bar = mean(x)
alpha = 0.05
s = 5;
epsilon = qnorm(1-alpha/2) * s/sqrt(n)
cat('KTC', 100*(1-alpha), '% cho ky vong mu la:\n')
cat('[', x.bar - epsilon, ';', x.bar + epsilon, ']\n')

#Bai02:
#a) Nhap du lieu tu file data31.xls vao R
dat31 = read.csv("data31.csv", header = T)
attach(dat31); names(dat31)

#b) Viet ham ci.mean
ci.mean = function(x,alpha){
  n = length(x) #co mau
  x.bar = mean(x) #trung binh mau
  s = sd(x) #do lech chuan mau
  t = qt(1-alpha/2, n - 1) #Phan phoi Student
  epsilon = t*s/sqrt(n) #Sai so uoc luong
  cat('KTC', 100*(1-alpha), '% cho ky vong mu la:\n')
  cat('[', xbar - epsilon, ';', x.bar + epsilon, ']\n')
}