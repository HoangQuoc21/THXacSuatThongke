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