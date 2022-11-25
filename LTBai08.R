#Bai08: Kiem Dinh Gia Thuyet Thong Ke

#Ket luan dua vao p-value tinh ra tu cac ham test
#-p-value nho hon alpha thi bac bo H0 (p-value cang nho thi H0 cang sai)
#-Hoac dung khoang tin cay de ket luan( chi dung voi do tin cay tuong ung cua de bai)
#+Neu mu nam trong khoang tin cay thi H0 dung, mu nam ngoai thi H0 sai

#-t.test dung cho kiem dinh trung binh mau
#-prop.test dung cho kiem dinh ty le ( n lon)
#-binom.test dung cho kiem dinh ty le ( n nho)

#Dung ham t.test(x, mu = mu0, alternative = 'two.sided'/'greater'/'less', conf.level = doTinCay)

#VD1:
load('heights.rda')
summary(heights)
hist(heights)
t.test(heights, mu = 160, conf.level = 0.95)

#Lay tung bien trong t.test ra:
result = t.test(heights, mu = 160, conf.level = 0.95)
result$statistic

#n la so luong phan tu tong the
#y la so luong phan tu thoa dieu kien de bai cho
#prop.test(y,n,p = p0, alternative = '', conf.level = )
#binom.test(y,n,p = p0, alternative = '', conf.level = )