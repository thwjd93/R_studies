setwd("~/Desktop/R_Project/R_data")
kor <- scan("kor.txt")
boxplot(kor, main = "국어점수 분포",
        ylab = "점수", col = 5)
print(max(kor)); print(min(kor)); print(median(kor))
