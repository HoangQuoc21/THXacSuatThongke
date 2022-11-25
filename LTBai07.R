#Tuan 07: Uoc Luong Tham So Thong Ke

#Trung binh thong the: mu
#Do lech chuan tong the: sigma
#Trung binh mau: mean(x)
#Do lech chuan mau: sd(x)

#Tinh dung sai E phu thuoc vao 3TH:
#TH1: sigma da biet, tong the co pp chuan (n >= 30 thi khong can quan tam den do
#lech chuan)
#E = z1-a/2 * sigma/sqrt(n)
#TH2: sigma khong biet va n >= 30
#E = z1-a/2 * sd(x)/sqrt(n)
#TH3: sigma khong biet va n < 30 kem theo tong the co phan phoi chuan
#E = tn-1,1-a/2 * sigma / sqrt(n)

#z1-a/2 = qnorm(1-alpha/2)
#tn-1,1-a/2 = qt(1-alpha/2, df = n - 1)

#Tinh khoang tin cay
#khoang tin cay = trungbinhmau +- dungsai

#Khoang tin cay cho ty le tong the
#Ty le tong the: p
#Ty le mau: p^
#Dung sai E = z1-a/2*sqrt(p^*(1 - p^)/2)

#VD1: Doan chuong trinh sau mo phong 50 khoang tin cay cho ty le xuat hien
#mat sap khi tung mot dong xu can doi

# Tung 30 d?ng xu cân d?i 50 l?n
m = 50; n=30; p = .5; alpha = 0.05 

# Tính t? l? m?u
p.hat = rbinom(m,n,p)/n 

# Dung sai
epsilon = qnorm(1-alpha/2)*sqrt(p.hat*(1-p.hat)/n)

# Ve 50 khoang tin cay
matplot(rbind(p.hat - epsilon, p.hat + epsilon),
rbind(1:m,1:m),type="l",lty=1,
xlab = "Vi tri cac khoang tin cay",
ylab = "50 khoang tin cay")

# Ve duong thang p = 0.5
abline(v=p) 

