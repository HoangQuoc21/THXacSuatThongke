# BÀI 01
x <- c(4,2,6)
y <- c(1,0,-1)
# a) length(x) = 3
length(x)
# b) sum(x) = 12
sum(x)
# c) sum(x^2) = 56
sum(x^2)
# d) x+y = (5,2,5)
x + y
# e) x*y = (4,0,-6)
x*y
# f) x-2 = (2,0,4)
x-2
# g) x^2 = (16,4,36)
x^2

#BÀI 02
#a) 7:11 = 7 8 9 10 11
7:11
#b) seq(2,9) = 2 3 4 5 6 7 8 9
seq(2,9)
#c) seq(4,10,by2) = 4 6 8 10
seq(4,10,by=2)
#d) seq(3,30,length=10) = 3 6 9 12 15 18 21 24 27 30 
seq(3,30,length=10)
#e) seq(6,-4,by=-2) = 6 4 2 0 -2 -4
seq(6,-4,by=-2)

#BÀI 03
#a) rep(2,4) = 2 2 2 2
rep(2,4)
#b) rep(c(1,2),4) 1 2 1 2 1 2 1 2
rep(c(1,2),4)
#c) rep(c(1,2), c(4,4)) 1 1 1 1 2 2 2 2
rep(c(1,2), c(4,4))
#d) rep(1:4,4) 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4
rep(1:4,4)
#e) rep(1:4,rep(3,4)) 1 1 1 2 2 2 3 3 3 4 4 4
rep(1:4,rep(3,4))

#BÀI 04
#a) 6,6,6,6,6,6 = rep(6,6)
rep(6,6)
#b) 5,8,5,8,5,8,5,8 = rep((5,8),4)
rep(c(5,8),4)
#c) 5,5,5,5,8,8,8,8
rep(c(5,8),c(4,4))

#BÀI 05
x<- c(5,9,2,3,4,6,7,0,8,12,2,9)
#a) x[2] = 9
x[2]
#b) x[2:4] = 9 2 3
x[2:4]
#c) x[c(2,3,6)] = 9 2 6
x[c(2,3,6)]
#d) x[(c(1:5,10:12))] = 5 9 2 3 4 12 2 9
x[(c(1:5,10:12))]
#e) x[-(10:12)] = Bỏ x[10:12] = 5 9 2 3 4 6 7 0 8
x[-(10:12)]

#BÀI 06
y<-c(33,44,29,16,25,45,33,19,54,22,21,49,11,24,56)
#Thiết lập các vecto mang số liệu và gán vào dataframe(bảng) days
monday <- c(y[1:3])
tuesday <- c(y[4:6])
wednesday <- c(y[7:9])
thursday <- c(y[10:12])
friday <- c(y[13:15])
days <- edit(data.frame(monday, tuesday, wednesday, thursday, friday)) 
#Dùng lệnh summary để tóm tắt những thong tin trong bảng
summary(days)
#Thiết lập các vecto mang số liệu và gán vào dataframe(bảng) days
first_shop <-c(y[1],y[4],y[7],y[10],y[13])
second_shop <-c(y[2],y[5],y[8],y[11],y[14])
third_shop <- c(y[3],y[6],y[9],y[12],y[15])
shops <- edit(data.frame(first_shop, second_shop, third_shop))
summary(shops)

#BÀI 07
#Khởi tạo ma trận
x <- matrix(data = c(3,2,-1,1), nrow = 2, ncol = 2, byrow = T)
#In ma trận x
print(x)
#Khởi tạo ma trận y
y <- matrix(data = c(1,4,0,0,1,-1), nrow = 2, ncol = 3, byrow = T)
#In ma trận y
print(y)
#(a) 2*x = 6 4, -2 2
print(2*x)
#(b) x*x = 9 4, 1 1 
print(x*x)
#Phép %*% là phép nhân 2 ma  trận
#(c) x%*%x: Nhân ma trận x với ma trận x
print(x%*%x)
#(d) x%*%y: Nhân ma trận x với ma trận y
print(x%*%y)
#(e) t(y): Chuyển vị ma trận, hay quay ma trận sang trái = 1 0, 4 1 ,0 -1
print(t(y))
#Hàm solve(x) dùng để tìm ma trận nghịch đảo của ma trận x
#(f) solve(x)
print(solve(x))

#BÀI 08
#- [dòng,]
#- [, cột]
#(a) x[1,] -> In ra dòng đầu tiên của ma trận x
x[1,]
#(b) x[2,] -> In ra dòng thứ 2 của ma trận x
x[2,]
#(c) x[,2] -> In ra cột thứ 2 của ma trận x
x[,2]
#(d) y[1,2] -> In ra phần tử dòng 1, cột 2 của ma trận y
y[1,2]
#(e) y[,2:3] -> In ra từ cột 2 đến cột 3 của ma trận y
y[,2:3]

#BÀI 09
#Ý 1: 
attach(quakes)
print(quakes)
#Lưu các giá trị của cột depth và mag
dep <- quakes[,3]
mag <- quakes[,4]
#Chuyển 2 giá trị đó vào dataframe
sum1 <- edit(data.frame(dep,mag))
#Tóm tắt data frame vửa lập, ta được tóm tắt thống kê về 2 biến depth và mag

#Ý 2: 
attach(mtcars)
#Lưu các giá trị của cột tên, cân nặng và mức tiêu thụ
name <- mtcars[,0]
weight <- mtcars[,6]
consumption <- mtcars[,1]
#Chuyển 3 giá trị đó vào dataframe
sum2 <- edit(data.frame(name,weight, consumption ))
sum2