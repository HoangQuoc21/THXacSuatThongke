#Ho ten (khong dau): Lam Hoang Quoc
#MSSV: 21120542
#################### BAI LAM #################### 
# Bai 1
x = 2
n = 100+x
mu =10*x
sigma = x+1
alpha = (x+1)/20

#a)
X = rnorm(n,mu,sigma);X

#b)
test = t.test(X, mu = 10*x, alternative = 'two.sided', conf.level = 1 - alpha);test
p.value = test$p.value; p.value
KL = ifelse(p.value < alpha,'Bac bo H0', 'Chua du co so bac bo H0')
cat(KL, 'voi muc y nghia alpha =', (1-alpha)*100,'\n')

#c)
func = function(N){
	Z = c(replicate(rnorm(n,mu,sigma),N));Z
	Y = c(replicate(test,N));Y
	y1 = length(Y[Y$p.value<=alpha]);y1
	n1 = length(Y);n1
	KQ = y1/n1
	cat('Ty le bac bo trong ',N,' lan la: ',KQ, '\n')
	ifelse(KQ > alpha, 'KQ lon hon alpha', 'KQ nho hon bang alpha')
	
}

#Ap dung:
func(100)
func(1000)
func(10000)
