#pair: neu lay tu 1 mau: True. Neu lay tu 2 mau doc lap: False
#p-value < alpha (muc y nghia) => var.equal = False
#p-value = alpha (muc y nghia) => var.equal = True

#Kiem Dinh Gia Thuyet 2 Mau
#1. So sanh ky vong giua hai tong the doc lap:
#VD1: 
load('scores.rda')
scores

alpha = 0.05
(var.equal = var.test(scores$midterm, scores$final))
t.test(scores$midterm, scores$final, var.equal = false)
boxplot(scores)

#2. So sanh theo cap:
#VD2:
cholesterol = read.table('cholesterol.txt', header = T)
cholesterol
boxplot(cholesterol[2:3])

attach(cholesterol)
v.equal = var.test(Before, After, data=cholesterol)

p.v.equal = v.equal$p.value
alpha = 0.05
v.equal = ifelse(p.v.equal <= alpha, False, True)
t.test(Before, After, paired = True, var.equal = v.equal, alternative = 'greater', data = 'cholesterol'

#3. So sanh 2 ty le:
#VD3:
y = c(94,76)
n = c(360,320)
prop.test(y,n,alternative = 'greater')

#Bai Tap:
#Bai01: 
#a): 
#Da biet sigma1 = 0.002 != sigma2 = 0.0025
volume = read.csv('volume.csv', header = T); volume
x= c(volume$machine1); x
y = c(volume$machine2); y
t.test(x,y,alternative = "two.sided", var.equal = F, conf.level = 0.95)
#=>alternative hypothesis: true difference in means is not equal to 0
#=> Bac bo H0, Nhan dinh cua ky su sai

#b) p-value kiem dinh duoc la 0.1425
#c
#khoang tin cay doc o ket qua cau a

#d
test.leq.oneside=function(x,y,mu0,sigma1,sigma2,alpha){
  temp=TRUE
  if(sigma1 != sigma2) temp=FALSE
  result=t.test(x=x,y=y,mu=mu0,alternative="less",conf.level=1-alpha,paired=FALSE,var.equal=temp)
  print("p.value = ")
  print(result$p.value)
  if(result$p.value < alpha) print("Bac bo H0")
  else print("Chap nhan H0")
}
test.leq.oneside(machine1,machine2,0,0.002,0.0025,0.05)

#e
test.geq.oneside=function(x,y,mu0,sigma1,sigma2,alpha){
  temp=TRUE
  if(sigma1 != sigma2) temp=FALSE
  result=t.test(x=x,y=y,mu=mu0,alternative="greater",conf.level=1-alpha,paired=FALSE,var.equal=temp)
  print("p.value = ")
  print(result$p.value)
  if(result$p.value < alpha) print("Bac bo H0")
  else print("Chap nhan H0")
}
test.geq.oneside(machine1,machine2,0,0.002,0.0025,0.05)


#Bai04:
#a):
setwd('D:/Github/THXacSuatThongke/Data cho cac bai thuc hanh')
cholesterol = read.table('cholesterol.txt', header = T); cholesterol
attach(cholesterol)
#Kiem dinh phuong sai:
var.test(Before, After)
#lay ket qua tu Kiem dinh phuong sai
alpha = 0.05
v.equal = ifelse(var.test(Before, After)$p.value < alpha, F, T); v.equal

#Kiem dinh bang t.test
t.test(Before, After, alternative = 'greater', var.equal = v.equal, conf.level =  0.95)

# p.value < alpha => BAc bo H0

#b): Viet ham test.leq.oneside:
test.leq.oneside = function(x,y,mu0,alpha){
  D = x - y
  n = length(x)
  D.bar = mean(D)
  D.sd = sd(D)
  t0 = (D.bar - mu0)*sqrt(n)/D.sd
  p.value = pt(t0,n-1)
  cat('Voi muc y nghia', 100*alpha, '%\n')
  if (p.value < alpha)
    cat('Bac bo H0 voi p-value = ', p.value, '\n')
  else
    cat('Chua du co so bac bo H0 voi p-value = ', p.value, '\n')
}

x = Before; y = After
#Ap dung mu0 = 0
test.leq.oneside(x,y,mu0 = 0, alpha = 0.05)

#Kiem tra lai ban t.tets
t.test(x,y,alternative = 'less', var.equal = v.equal, conf.level = 0.95, paired = T)

#c): Viet ham test.geq.oneside:
test.leq.oneside = function(x,y,mu0,alpha){
  D = x - y
  n = length(x)
  D.bar = mean(D)
  D.sd = sd(D)
  t0 = (D.bar - mu0)*sqrt(n)/D.sd
  p.value = 1 - pt(t0,n-1)
  cat('Voi muc y nghia', 100*alpha, '%\n')
  if (p.value < alpha)
    cat('Bac bo H0 voi p-value = ', p.value, '\n')
  else
    cat('Chua du co so bac bo H0 voi p-value = ', p.value, '\n')
}

x = Before; y = After
#Ap dung mu0 = 0
test.geq.oneside(x,y,mu0 = 0, alpha = 0.05)

#Kiem tra lai ban t.tets
t.test(x,y,alternative = 'greater', var.equal = v.equal, conf.level = 0.95, paired = T)

#Bai07:
y = c(15,8)
n = c(300,300)
prop.test(y,n,alternative = 'two.sided', conf.level = 0.975)



