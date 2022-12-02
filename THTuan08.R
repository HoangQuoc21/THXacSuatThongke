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

#Bai03:
#Nhap du lieu tu file data32.csv vao
dat32 = read.csv("data32.csv", header = T)
attach(dat32); names(dat32)

#a) Uoc luong khoang cho thoi gian tu hoc trung binh cua sv truong KHTN
ci.mean(KHTN, 0.05)

#b) Viet ham ci.prop
ci.prop = functionc(f,n,alpha){
  p.hat = f/n #Ty le mau
  ep = qnorm(1-alpha/2)*sqrt(p.hat*(1-p.hat)/2) #epsilon
  cat('KTC', 100*(1-alpha), '% cho ty le p la:\n')
  cat('[', p.hat - ep , ';', p.hat + ep, ']\n')
 }

#Tinh f,n
n = length(KHTN)
f = length(KHTN[KHTN > 5])
#ap dung tinh ty le mau
ci.prop(f,n,0.1)
ci.prop(f,n,0.05)
ci.prop(f,n,0.01)

#Bai04:
