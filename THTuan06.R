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
