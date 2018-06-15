# 데이터 프레임 만들기 
num <- c(1:8)
class <- c(1, 2, 2, 3, 1, 2, 3, 1)
sex <- c("F", "M", "F", "F", "M", "F", "F", "M")
height <- c(160, 175, 168, 157, 183, 169, 165, 177)
weight <- c(50, 68, 65, 49, 82, 56, 52, 78)
data <- data.frame("번호"=num, "학년"=class, "성별"=sex, "키"=height, "몸무게"=weight)
print(data)

#키/몸무게 평균과 최댓값
avgHei <- mean(data$키)
maxHei <- max(data$키)
avgWei <- mean(data$몸무게)
maxWei <- max(data$몸무게)
cat("\n키 평균 = ", avgHei, "최대 키 = ", maxHei, "\n")
cat("몸무게 평균 = ", avgWei, "최대 몸무게 = ", maxWei, "\n")


#키 170 이상인 학생 추출
data2 <- cbind(data[,c(1:4)], avgHei, data[5], avgWei)

baseHei <- 170;
above170 <- subset(data2, subset = (data2$키 >= baseHei), select = c(번호, 학년, 성별, 키, 몸무게))
cat("\n키 170 이상인 학생은 : \n"); print(above170)


# 범주로 함수 적용
avgWei_FM <- tapply(data$몸무게, data$성별, mean)
maxHei_C <- tapply(data$키, data$학년, max)
cat("\n여남 학생별 몸무게 평균 : ", "\n"); print(avgWei_FM)
cat("\n학년별 키의 평균 : ", "\n"); print(maxHei_C)


