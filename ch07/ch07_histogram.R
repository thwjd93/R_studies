setwd("~/Desktop/R_Project/R_data")
kor <- scan("kor.txt")
print(kor)
hist(kor,
     breaks = 10,   # 기둥의 갯수를 몇개로 할 것인지
     freq = FALSE,  # False : 확률밀도(비율), True : 빈도수(기본값)
     col = rainbow(10),
     xlab = "국어점수", ylab = "비율")
