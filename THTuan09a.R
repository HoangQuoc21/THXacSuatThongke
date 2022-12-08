#Bai01: 
#Doc du lieu tu file:
setwd('D:/Github/THXacSuatThongke/Data cho cac bai thuc hanh')
data = read.csv("profit.csv")
x = data$profit
#a): Ve do thi cua du lieu
hist(x)
#Nhan xet: Du lieu da cho co dang dieu xap si phan phoi chuan

#b): Uoc luong khoang tin cay cho ky vong voi alpha = 0.01 cho mau co pp chuan:
#Loc ra nhung ngay co doanh so ban hang > 65tr
hi.pro = x[x>65]
#Tinh trung binh mau, do lech chuan mau
x.bar = mean(hi.pro)
s = sd(hi.pro)
n = length(hi.pro)
alpha = 0.01
epsilon = qnorm(1-alpha/2)*s/sqrt(n)
mu.lower = x.bar - epsilon
mu.upper = x.bar + epsilon
cat("KTC ", 100*(1-alpha), "% cho ky vong mu la:\n")
cat("[",mu.lower," ; ", mu.upper, "]\n")

#c) Su dung ham t.test de kiem dinh gia thuyet cho ky vong voi muc y nghia 1%
#Dat gia thuyet:
#H0: mu <= 60
#H1: mu > 60
t.test(x,alternative = "greater", mu = 60, conf.level = 0.99)
#Nhan xet: Ket qua cho ta p-value = 0.9699 > 0.01 (alpha)
#Do do chua du co so de bac bo gia thuyet H0 voi muc y nghia 1%
#KET LUAN: Voi muc y nghia 1% phuong thuc ban hang moi khong mang
#lai hieu qua hon phuong thuc ban hang truoc do.

#Bai02:
#a) Bien doi du lieu ve dang vecto
xi = c(5,6,7,8,9,10)
ni = c(5,10,15,20,12,8)
x = rep(xi,ni); x

#Ve bieu do stem&leaf cho du lieu x:
stem(x)
#b: Viet ham test.leq.onside:
test.leq.oneside = function(x,mu_0,alpha){
  x.bar = mean(x)
  s = sd(x)
  n = length(x)
  t_0 = (x.bar - mu_0)*sqrt(n)/s
  p.value = pt(t_0, n-1)
  cat('Voi muc y nghia alpha = ',alpha, ':\n')
  if (p.value <= alpha)
    cat('Bac bo H0 voi p-value =', p.value)
  else
    cat('Chua du co so de bac bo H0 voi p-value = ', p.value)
}

#Ap dung:
test.leq.oneside(x,8,0.05)

#Kiem tra lai bang ham t.test:
t.test(x,alternative = 'less', mu = 8, conf.level = 0.95)

#Nhan xet: Ket qua cho ta p-value = 0.0332 < 0.05 (alpha)
#Do do bac bo gia thuyet H0: "mu >= 8" Voi muc y nghia 5%
#KET LUAN: voi muc y nghia 5%, diem trung binh cua hoc vien nho hon 8

#c): Viet ham test.geg.oneside:

test.geq.oneside = function(x,mu_0,alpha){
  x.bar = mean(x)
  s = sd(x)
  n = length(x)
  t_0 = (x.bar - mu_0)*sqrt(n)/s
  p.value = 1 - pt(t_0, n-1)
  cat('Voi muc y nghia alpha = ',alpha, ':\n')
  if (p.value <= alpha)
    cat('Bac bo H0 voi p-value =', p.value)
  else
    cat('Chua du co so de bac bo H0 voi p-value = ', p.value)
}

#Ap dung:
test.geq.oneside(x,8,0.05)

#Kiem tra lai bang ham t.test:
t.test(x,alternative = 'greater', mu = 8, conf.level = 0.95)

#Nhan xet: Ket qua cho ta p-value = 0.9668 > 0.05 (alpha)
#Do do chua du co so bac bo gia thuyet H0: "mu <= 8" Voi muc y nghia 5%
#KET LUAN: voi muc y nghia 5%, diem trung binh cua hoc vien khong lon hon 8

#Bai06:
#Nhap du lieu vao R:
dat = read.csv('times.csv', header = T)
attach(dat); names(dat)

#a) Su dung prop.test de kiem dinh:
n = length(KHTN);n
y = length(KHTN[KHTN > 5]);y
prop.test(y,n,0.5,alternative = 'two.sided', conf.level = 0.95)

#b): Viet ham proptest.leq
proptest.leq = function(f,n,p0,alpha){
  p.hat = f/n;
  z0 = (p.hat - p0)*sqrt(n)/sqrt(p0*(1-p0))
  p.value = pnorm(z0)
  cat('Voi muc y nghia alpha = ', alpha*100, "% thi:\n")
  if (p.value < alpha)
    cat('Bac bo H0 voi p-value =', p.value)
  else
    cat('Chua du co so de bac bo H0 voi p-value = ', p.value)
}

f = y
#Ap dung oi H1: p < 0.5
proptest.leq(f,n,0.5,0.05)

#Kiem tra lai bang prop.test
prop.test(f,n,0.5,alternative = 'less', conf.level = 0.95)






















