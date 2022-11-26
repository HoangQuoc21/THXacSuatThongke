## Mot So Phan Phoi Xac Suat Thong Dung
## binom: Phan Phoi Nhi Thuc B
## norm: Phan Phoi chuan N
## pois: Phan Phoi Poisson P
## unif: Phan Phoi Deu U
## exp: Phan Phoi Mu E
## hyper: Phan Phoi Sieu Boi
## ROI RAC: nhi thuc, sieu boi, pois

## De nhan mat do dung lenh d(phan phoi)
## De nhan gia tri cua ham phan phoi dung p(phan phoi)
## De mo phong gia tri cua phan phoi dung r(phan phoi)
## De nhan gia tri phan vi cua phan phoi dung lenh q(phan phoi)

##1. Mat do:
## -Voi bien ngau nhien X roi rac, mat do cua X tai x la xac suat P(X=x)
## -Voi bien ngau nhien X co ham mat do fx, mat do cua X tai x la fX(x)
# Ghi chu:
# Neu phan phoi cua X phu thuoc vao mot hoac nhieu tham so, thi mat do cua X tai x duoc cho boi lenh
# d[phanphoi(x,thamso1, thamso2)]

##2. Bieu Dien Bang Do Thi
# Ve bieu dien do thi cua ham xac suat cua bien roi rac X 
# dung lenh "plot" va tuy chon "type=h"
#plot([Pham vi ve], [loai phan phoi(bien x la vector)], type = "h", ylab = "[Tieu De]")
#curve([loai phan phoi], from = [diem bat dau], to = [diem ket thuc], ylab = "[tieu de]")

##3. Ham Phan Phoi: FX(x) = P(X <= x)
# *Ghi chu:
# Neu phan phoi cua X phu thuoc vao mot hoac nhieu tham so, thi ham phan phoi cua X tai x duoc cho boi lenh
# p[phanphoi(x,thamso1, thamso2)]
# Co the tinh P(X>x) = 1 - FX(x), bang lenh: 
# p[phanphoi(x,tham1,tham2, lower.tail=FALSE)]
# *Ve ham phan phoi:
# -Dung lenh stepfun cho bien ngau nhien roi rac
# -Dung lenh curve cho bien ngau nhien

## 4. Phan vi
# Neu phan phoi cua X phu thuoc vao mot hoac nhieu tham so, thi phan vi muc p cua X duoc cho boi
# q[phanphoi(p,tham1,tham2)]

##VD1: 
#a) dbinom(k,n,p)
#X~B(8,0.3)
dbinom(4,8,0.3)
#Ve ham mat do
plot(0:8,dbinom(0:8,8,0.3),type = "h", ylab = "P(X=x)")
#Tinh FX(4) = P(X <= 4)
pbinom(4,8,0.3)
#Ve ham phan phoi 
#stepfun de ve ham phan phoi
plot(stepfun(0:8,c(0,pbinom(0:8,8,0.3))), ylab="FX(x)", main = "")
#Tinh phan vi muc 0.25
qbinom(0.25,8,0.3)

#b) dnorm(x,mu,sigma)
# X~N(2,0.12^2)
dnorm(1.7,2,0.12)
#Ve ham mat do
curve(dnorm(x,2,0.12), from=1.5, to = 2.5, ylab = "FX(x)")
#Tinh FX(2.1) = P(X<=2.1)
pnorm(2.1,2,0.12)
#Ve Ham phan phoi
curve(pnorm(x,2,0.12), from = 1.5, to = 2.5, ylab = "FX(x)")
#Tinh phan vi muc 0.975
qnorm(0.975,2,0.12)

#c) X~E(3)
# Tinh P(X>2)
pexp(2,3,lower.tail = FALSE)

##VD2: Tinh ham mat do voi 1 vector
#a) c(4,6)
dbinom(c(4,6),8,0.3)
#b) dexp(x,lambda)
dexp(2,c(1:3))

##5. Mo phong cac phan phoi duoc lap trinh san
#*Lenh:
# -Neu phan phoi cua X phu thuoc vao mot hoac vai tham so, tham1, tham2 thi mo phong n bien doc lap co cung phan phoi nhu X bang: 
# r[phanphoi(n,tham1,tham2)]

##VD3:
#a) Mo phong mot mau ngau nhien co 10 cua phan phoi Poission P(2)
rpois(10,2)
#b) Mo phong mot mau ngau nhien co 80 co phan phoi nhi thuc B(1,0.02)
rbinom(80,1,0.02)
#c) Mo phong mt mau ngau nhien co 15 cua phan phoi N(2,0.12^2)
rnorm(15,2,0.12)

#BTVN1: //Phan phoi sieu boi: hyber(x,m,n,k) p/s: hyper(x,M,N,n)
#rhyper(nn,m,n,k)
plot(0:15,dhyper(0:15,25,100,75),type = "h", ylab = "P(X=x)")

#BTVN2: 
sum(dhyper(5:12,25,100,75))
phyper(12,25,100,75) - phyper(5,25,100,75)

#BTVN3: 
#a) 
curve(dexp(x,0.6),0,10)
#b)
curve(dexp(x,0.3),0,10,add = T)
#c)

#BTVN4:
plot(0:8,dpois(0:8,1),type = "h" ,ylab = "P(X=x)" )

#BTVN5:
curve(dexp(x,3),0,10)

#BTVN6: 
ylim = c(0,0.25)
split.screen(c(1,2)) 
screen(1)
plot(0:50,dbinom(0:50,50,0.08), type = "h", ylab = "P(X=x)", main = "X~B(50,0.08)")
screen(2)
plot(0:50,dpois(0:50,4), type = "h", ylab = "P(X=x)", main = "X~P(4)")
close.screen(all = TRUE)

#BTVN7:
plot(0:50, dbinom(0:50,50,0.4),type = "h", ylab = "P(X=x)")
curve(dnorm(x,20,sqrt(12)), from = 0, to = 50, add = T)
