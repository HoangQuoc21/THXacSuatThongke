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
diem = data.frame(sv,ques1,ques2, ques3)



