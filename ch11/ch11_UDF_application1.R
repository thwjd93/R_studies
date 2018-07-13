# makeScoreData <- function() {
number <- seq(1:5); name<- c("송중기", "전지현", "송혜교", "정우성", "김태희")
kor <- c(58,63,85,69,90); eng <- c(100,95,63,80,32)
mat <- c(98,45,56,89,60); grade <- c("B", "C", "A","C","D")
stuInfo <- data.frame(번호=number, 이름=name, 국어=kor, 영어=eng, 수학=mat, 등급=grade)
cat("\n성적데이터:\n"); print(stuInfo); cat("\n")
# }


# calcSumMean <- function() {
sPos <- 3; tPos <- 5
totScore <- apply(stuInfo[,c(sPos:tPos)],1,sum)
avgScore <- apply(stuInfo[,c(sPos:tPos)],1,mean)
resScore <- data.frame(stuInfo[2], 합계=totScore, 평균=avgScore)
cat("\n세 과목 합계와 평균:\n"); print(resScore); cat("\n")
# }


# Over70 <- function() {
avgOver70 <- resScore[resScore$평균 > 70,]
cat("\n평균 70점 초과인 학생:"); print(avgOver70)
# }
