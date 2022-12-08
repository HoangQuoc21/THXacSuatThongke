#HOI QUY TUYEN TINH
#VD1: Nhip tim toi da
x = c(18,23,25,35,65,54,34,56,72,19,23,42,18,39,37)
y = c(202,186,187,180,156,169,174,172,153,199,193,174,198,183,178)
#Ve do thi
plot(x,y)
#Ve duong hoi quy
abline(lm(y~x))
#Cac gia tri co ban cua phan tich hoi quy
result = lm(y~x)
summary(result)

#Neu muon lay thong tin ve residuals -> dung resid, he so dung coef
coef(result)
res = resid(result)
summary(res)

#Bai01:
#a): Nhap du lieu
P = c(300,250,400,550,317,389,425,289,389,559)
NB = c(3,3,4,5,4,3,6,3,4,5)

#Ve bieu do phan tan
plot(NB,P)
#Ve duong hoi quy
abline(lm(P~NB))

#b): Hoi quy
lm(P~NB)