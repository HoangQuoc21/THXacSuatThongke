#TUAN06 + TUAN07
#Bai01:
#Tao 2 vector x, y:
x = c(1,2,5,7,-3,0,5,1,5,6)
y = c(2,2,0,-5,7,8,11,9,3,2)

#a
x+y; x*y; x-y

#b. Tach gia tri chan cua x gan vao z, gia tri le cua y vao t
z = x[x%%2 == 0]; z
t = y[y%%2 != 0]; t

#c. Tach gia tri duong cua x va y
d1 = x[x>0]; d1
d2 = y[y>0]; d2

#d. Trung binh, do lech tieu chuan, sai so chuan cua x va y
#Trung binh mau:
mean(x); mean(y)
#Do lech tieu chuan:
sd(x); sd(y)
#sai so chuan:
sd(x)/sqrt(length(x)); sd(y)/sqrt(length(y))

#e. Tim phan tu lon nhat, be nhat cua x,y
max(x); min(x)
max(y); min(y)

#f. Sap xep x tang dan, y giam dan
sort(x)

#g. Luu x va y
save(x,file = 'varx.rda')
save(y,file = 'vary.rda')
sort(y, decreasing = T)

#Bai02:
#Doc du lieu tu file "data01.csv" vao R va gan vao vien data1
setwd("C:/Users/quoc/Desktop/LỚP HỌC/XÁC SUẤT THỐNG KÊ/THỰC HÀNH/Data cho cac bai thuc hanh")
data1 = read.csv("data01,csv",header = T)
attach(data1);  names(data1)
data1

#a. Tinh trung binh, phuong sai, trung vi cua cac bien FPSA va TPSA
#Trung binh
mean(FPSA); mean(TPSA)
#Phuong sai
var(FPSA); var(TPSA)
#Trung vi:
median(FPSA); median(TPSA)

#Bai03:
sv = 1:10
ques1 = c(3,3,3,4,3,4,3,4,3,4) 
ques2 = c(5,3,5,5,2,2,5,5,4,2)
ques3 = c(1,3,1,1,1,3,1,1,1,1)

#a) Tao bang diem
diem = data.frame(sv,ques1,ques2, ques3); diem

#b) Tao bang ket qua rieng cho cau hoi 1,2
tab1 = table(ques1); tab1
tab2 = table(ques2); tab2
tab3 = table(ques3); tab3

#c) Ve bieu do bar cot dung cho 3 cai hoi
par(mfrow = c(1,3))
barplot(tab1); barplot(tab2); barplot(tab3) 

#d) Ve bieu do bar cot ngang cho cau hoi 2,3
barplot(tab2, horiz = T)
barplot(tab3, horiz = T)

#Bai04:
#a) Tao 100 gia tri co phan phoi nhi thuc B(60, 0.4)
x = rbinom(100,60, 0.4); x
hist(x, main = "Mo phong phan phoi nhi thuc")

#b) Tao ngau nhien 11 gia tri co phan phoi Posision voi lambda = 4
y = rpois(100,4); y
hist(y, main = "Mo phong phan phoi Poision")

#c) Tao ngau nhien 100 gia tri co phan phoi chuan co trung binh la 50 va do lech chuan 4. Ve ham mat do
z = rnorm(100,50,4); z
#Ve ham mat do:
plot(density(z), main = "Bieu do ham mat do PP Chuan")

#d Tao ngau nhien 100 gia tri co phan phoi mu voi lambda = 1/2500
t = rexp(100,1/2500); t
#Ve ham mat do
plot(density(t), main = "Bieu do ham mat do PP Mu")

#Bai05:
#a Doc du lieu:
diesel.engine = read.table('diesel_engine.dat', header = T)
diesel.time = read.csv ('diesel_time.csv', header = T)

#b) Liet ke ten cac bien trong hai dataframe tren
names(diesel.engine)
names(diesel.time)

#c) Data frame diesel.engine
length(diesel.engine[diesel.engine = 'NA'])
#Xac dinh so bien khuyet trong bien speed va thay doi gia tri
s = length(speed[speed == 'NA'])
speed[is.na(speed) == T] = 1500

#Xac dinh so bien khuyet trong bien load va thay doi gia tri
l = length(load[load == 'NA'])
load[is.na(load) == T] = 20
s + l
speed; load

#d) Tinh trung binh, phuong sai, do lech chuan cua bien alcohol
mean(alcohol); var(alcohol); sd(alcohol); min(alcohol); max(alcohol)

#e) Ghep hai dataframe diesel.engine va diesel.time thanh diesel
diesel = data.frame(diesel.engine, diesel.time)
diesel

#f) Trich gia tri cua bien run ma co delay < 1.000
run[delay < 1.000]

#g) Dem so dong co co timing = 30
length(run[timing == 30])

#h) Ve bieu do boxplot cho cac bien speed, timing, delay
par(mfrow = c(1,3))
boxplot(speed)
boxplot(timing)
boxplot(delay)

#i) Ve bieu do phan tan cho cac cap (timing, speed) va (temp, press)
plot(timing, press)
plot(temp, press)

#j) Chuyen bien load sang bien nhan to
load = factor(load)
load

#k) Chia bien delay thanh 4 doan deu nhau
delay
new.delay = cut(delay, breaks = 4)
new.delay

#So gia tri trong tung khoang
tab = table(new.delay)
tab
#Ve bieu do
barplot(tab)




