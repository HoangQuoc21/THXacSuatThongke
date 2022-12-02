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
#c)
