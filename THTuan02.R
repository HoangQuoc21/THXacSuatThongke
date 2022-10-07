#BÀI 01
tong <- function(x,i){
  sum  <- 0
  j <- 0
  for(j in 1:i) {
    sum  = sum + x[j]
  }
  return(sum)
}

#Bài 02
theTich <- function(Radius){
  #Tính Vector Volume với vector Radius tương ứng
  Volume <- c((4*pi*Radius^3)/3)
  #Tạo dataframe biểu diễn 2 Vector Radius và Volume
  edit(data.frame(Radius, Volume))
}

#BÀI 03:
#Input thư mục chứa file cần mở
setwd("C:/Users/quoc/Desktop/LỚP HỌC/XÁC SUẤT THỐNG KÊ/THỰC HÀNH/Data cho cac bai thuc hanh")
data<-read.csv("data01.csv", header = TRUE)
attach(data)
data
index = function(Age){
  Index=Age
  for(i in 1:lenghth(Age)){
    if(Age[i]<=60)Index[i]=0
    if (Age<=70)Index[i]=1
    if (Age[i]<=80)Indexx[i]=2
    else (Age[i] > 80) Index[i]=3
  }
  edit(data.frame(Age, Index))
}

#BÀI 04:
plant <- function(){
  setwd("C:/Users/quoc/Desktop/LỚP HỌC/XÁC SUẤT THỐNG KÊ/THỰC HÀNH/Data cho cac bai thuc hanh")
  data<-read.csv("data11.csv", header = TRUE)
  attach(data)
  x<-rep((a+b)/2,n)
  m<-min(x)
  M<-max(x)
  Average<-mean(x)
  Var<-var(x)
  Frame<-edit(data.frame(Min = m, Max = M, Average,Var))
  detach(data)
}

#BÀI 05: 
phanvi <- function(x,p){
  if (p<=0 || p > length(x))
    return (0)
  else{
    i<-(p/100)*length(x)
    if(i-roung(i,)!=0)
      return (x[round(i)])
    else
      return ((x[i] + x[i+1])/2)
  }
}
