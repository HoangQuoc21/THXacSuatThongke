#Bài Kiểm Tra Số 1 - Nhóm C

#Bài a)
trungBinh = function(x){
  n = length (x)
  tong = 0;
  for(i in 1:n)
    tong = tong + x[i];
  tb = tong/n;
  return (tb)
}

phuongSai = function(x){
  tb = trungBinh(x);
  n = length(x)
  tong2 = 0;
  for(i in 1:n)
    tong2 = tong2 + (x[i] - tb)^2
  ps = tong2 / (n-1)
  return (ps)
}

#Bài b)
#sample(vector1, n, TRUE): tao 1 vector có n phần tử
#mỗi phần tử của sample nằm trong vector1
x = sample(c(1:40), 40, TRUE)
trungBinh(x)
phuongSai(x)