setwd("~/Desktop/R_Project/R_data")
data <- read.table("ch07_Score_List.txt", header = T)

# 과목 상관없이 점수 분포 알아보기
grade <- c(data$kor, data$eng, data$mat)

hist(grade, col = rainbow(7), breaks = seq(30, 100, by = 10), 
     main = "전체 학생의 점수 분포", xlab = "점수", ylab = "빈도수")



# 과목별 학생 분포 비교
data1 <- data[,-1]
boxplot(data1, main = "과목별 점수 분포", col = c(2,3,4), names = c("kor", "eng", "mat"))

kor_m <- median(data$kor)
eng_m <- median(data$eng)
mat_m <- median(data$mat)

text(1, kor_m+2, paste("중앙값=", kor_m))
text(2, eng_m+2, paste("중앙값=", eng_m))
text(3, mat_m+2, paste("중앙값=", mat_m)) 
# 박스 플롯위에 텍스트 쓰기(저수준 함수)
