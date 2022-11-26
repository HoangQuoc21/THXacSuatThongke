#Ho ten (khong dau): Lam Hoang Quoc
#MSSV: 21120542
#################### BAI LAM #################### 
# Bai 1
#1a
data = read.csv('data31.csv', header = T)
pro = data$profit

#1b
ci.mean = function(x, alpha)
{
	n = length(x)
	mean.x = mean(x)
	s = sd(x)
	z = qnorm(1 - alpha/2)
	eps = z * s / sqrt(n)
	cat('KTC: ', (1 - alpha)*100 ,'% la: \n')
	cat('[', mean.x - eps ,';', mean.x + eps ,']\n')
}

#Ap dung: 
#KTC 95% => alpha = 0.05
ci.mean(pro, 0.05) 
#KTC 99% => alpha = 0.01
ci.mean(pro, 0.01) 
