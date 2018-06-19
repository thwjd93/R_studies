setwd("~/Desktop/R_Project/R_data")
data <- read.table("ch07_score.txt", header = TRUE, stringsAsFactors = FALSE)


# 1) 각 과목 성적 그래프
barplot(data$kor, main = "국어성적", ylim = c(0,100), xlab = "이름", ylab = "점수", 
        names.arg = data$name, col = c(1,2,3,4,5,6))
barplot(data$eng, main = "영어성적", ylim = c(0,100), xlab = "이름", ylab = "점수", 
        names.arg = data$name, col = c(1,2,3,4,5,6))



# 2) 행렬로 barplot
data1 <- data[,-1]  # 행렬은 한가지 유형의 데이터만, 따라서 문자형인 1열 삭제  
data2 <- as.matrix(data1)  # 데이터프레임을 행렬로 
name <- c("국어", "영어", "수학")

barplot(data2, main = "과목별 학생 점수", names.arg = name,
        ylim = c(0,150), ylab = "점수", xlab = "과목", 
        col = rainbow(nrow(data2)), beside = TRUE)    # beside : 막대를 옆으로 나열

k = nrow(data2)
# barplot(data2, main = "과목별 학생 점수", names.arg = name, 
#         ylim = c(0,150), ylab = "점수", xlab = "과목", 
#         col = rainbow(k), beside = TRUE)

# 범례추가하기
legend("topleft", data$name, cex = 0.6, fill = rainbow(k), horiz = T)




# 3) 바그래프 쌓기
data1 <- data[,-1]
data3 <- t(data1)    #  행렬의 행과 열을 바꾸기(전치)

barplot(data3, main = "학생별 점수", ylim = c(0,350), ylab = "점수", 
        names.arg = data$name, beside = FALSE,
         border = "cyan", col = rainbow(nrow(data3)))

legend("topright", c("kor", "eng", "mat"), cex = 0.6, fill = rainbow(nrow(data3)), 
       horiz = T, bty = "n")

# bty = "n" : 범례 테두리 없이 (디폴트값은 테두리 있는 것)