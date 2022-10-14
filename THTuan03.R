#Bai01: 
#a)
p = seq(0,1,by = 0.1)
f = function(p){
	return (0.7*p^(-0.93))
}
vectorize(f)
integrate(f, lower = 0, upper = 0.2)$value
#b)
integrate(f, lower = 0, upper = 1)$value

#Bai02: 
x = sample(1:5, 100, TRUE, c(0.1,0.2,0.4,0.2,0.1))
plot(table(x)/100, type = "h", ylab = "Xac Suat Thuc Nghiem")
