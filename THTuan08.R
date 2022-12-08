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
#a) Dua du lieu bang ve dang vector
a = seq(1.2,2.0, by = 0.2)
b = seq(1.4,2.2, by = 0.2)
m = (a+b)/2
N = c(6,34,31,42,12)
x = rep(m,N);x
#ap dung ci.mean de tim KTC 95% cho chieu cao trung binh cua thanh nien o trong khu vuc
ci.mean(x,0.05)
#b)
f = length(x[x>=1.7])
n = length(x)
ci.prop(f,n,0.05)

#Bai05:
ktc.tb = function(x.bar, s = -1, sigma = -1, n, alpha){
  if (sigma >= 0){
    cd = qnorm(alpha/2, x.bar,sigma/sqrt(n))
    ct = qnorm(1-alpha/2, x.bar, sigma/sqrt(n))
  }
  else{
    eps = s/sqrt(n)*qt(1-alpha/2,n-1)
    cd = x.bar-eps
    ct = x.bar+eps
  }
  cat('Khoang tin cay', 100*(1-alpha), '% cho ky vong mu la:\n')
  round(c(lower = cd, upper = ct),2)
}

#Kiem tra:
n = 35
x = rnorm(n,10,5)
alpha = 0.05
x.bar = mean(x)
s = sd(x)
ktc.tb(x.bar, s, n = n, alpha = alpha)
