#BAI 1+2 +3 +4: 
#a): BNN Roi Rac
#1--------------------------: 
k = 0:8
p = function(k) choose(8,k)*0.3^k*0.7^(8-k)
p(k)
sum(p(k))

#2--------------------------:
#Ve bieu do cua xac suat
plot(k,p(k),type = "h", ylab = "P(X=x)")

#3--------------------------: Tinh P(X <=4)
F = function(k) sum(p(0:k))
#L?nh Vectorize dùng d? vector hóa nhi?u phép tính thành vector r?i tính t?ng ra 1 k?t qu?, ki?u t?ng h?t l?i ý
F = Vectorize(F)
F(4)

#4--------------------------:
#stepfun dùng d? v? bi?u d? b?c thang
plot(stepfun(k,c(0,F(k))), ylab = "FX(x)", main ="")

#b): BNN Lien Tuc
#1--------------------------: 
f = function(x, mu=0, sigma=1){
	1/sqrt(2*pi*sigma^2)*exp(-(x-mu)^2/(2*sigma^2))
}
#Tinh tich phan cua phan phoi chuan (intergrate d? tính tích phân, ? trong có 1 hàm gi? là function(x) - nh? ghi vào)
integrate(function(x) f(x,0,1), lower=-Inf, upper = Inf)

#2--------------------------: 
#Ve bieu do cua xac suat
curve(f(x,0,1),from=-3,to=3,ylab="fX(x)")

#3--------------------------: tính tích phân t? -Inf d?n a
F2 = function(a, mu=0, sigma=1 )
#Có $value d? l?nh integrate ch? tr? l?i giá tr? tích phân, ko tr? l?i sai s?
	integrate(function(x) f(x,mu,sigma), lower = -Inf, upper = a)$value 
F2 = Vectorize(F2)
F2(1.96)
} 
#4--------------------------: 
curve(F2(x), from=-3, to=3,ylab="FX(x)")
		  
#5 Phan vi
#1------------------------------
#Tinh phan vi muc 0.25 cua X cua VD 1a)
K = k[F(k) >= 0.25];
K[1]
F(0)
F(1)
#Tinh phan vi muc 0.975 cua X cua VD 1b)
uniroot(function(x) F2(x)-0.975, c(-3,3)) $root
F2(1.959992)
	
#6 Mo Phong
#Sample de mo phong so phep thu cua vecto 1:3, so lan lay ra la 2, replace = T: co hoan lai, voi cac xac suat tuong ung prob
sample(1:3, size = 2, replace = TRUE, prob = c(25/100. 20/100, 55/100))

y = c ("red", "green", "blue", "white", "black")
sample(y,2,prob = c(10/100, 30/100, 10/100, 30/100, 20/100)
#Neu ko co lenh replace = T, sample tu dong hieu replace = F (lay ko hoan lai)
		  
