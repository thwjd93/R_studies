# 예제1
setwd("~/Desktop/R_Project/R_data")
data <- read.xlsx("지점별_2017년_상반기판매실적.xlsx", colNames = TRUE)
data1 <- data[,-1]
data1 <- t(data1)
data2 <- as.matrix(data1)

par(family = "AppleGothic")
barplot(data2, main = "지점별 판매실적", col = c("green", "blue"),
        ylim = c(0,14), ylab = "판매액(억 원)", names.arg = data$지점, beside = TRUE)

legend("topright", row.names(data2), fill = c("green", "blue"), bty = "o")


# 예제2
data("iris")
speciesPetalWAvg <- tapply(iris$Petal.Width, iris$Species, mean)

barplot(speciesPetalWAvg, main = "꽃잎 너비의 평균",
        col = c(2:4), names.arg = c("setosa", "versicolor", "virginica"), 
        ylim = c(0,3))



# 예제3
x <- -3:3     # 실수 단위로는 어떻게 정리하는지?
y <- x^2+1

par(family = "AppleGothic")
plot(y, main = "<y=x^2+1과 y1=-x+6 그래프>",
     type = "o", pch = 1, lwd = 1, lty = 1,
     ylab = "y축", xlab = "x축", col = "blue")

y1 <- -x+6

lines(y1, col = "red",
      pch = 3, type = "o")

text(5,6, "y1=-x+6", cex = 0.6, col = "red")
text(3,5, "y=x^2+1", cex = 0.6, col = "blue")
legend(4.5,10, c("-x+6", "x^2+1"), fill = c("blue", "red"))
