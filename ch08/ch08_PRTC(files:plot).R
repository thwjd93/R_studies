# 반복문을 위해서 데이터 파일 경로와 이름 설정
srcDir <- c("~/Desktop/R_Project/R_data/PRTC/")   # 데이터 파일 경로 설정
datafiles <- list.files(srcDir)                  # 경로에 있는 파일들을 문자형 벡터로
dataNum <- length(datafiles)                     # for 명령문을 위해서 파일 개수 

dataNickname <- c("1학기 중간", "1학기 기말", "2학기 중간","2학기 기말")

# 반복문 
for(i in 1:dataNum) {
  datafile <- paste(srcDir, datafiles[i], sep="")
  
  score <- read.xlsx(datafile, sheet = 1, colNames = TRUE)
  
  avgStu <- apply(score[,c(5:7)], 1, mean)
  score <- cbind(score, 평균=avgStu)
  
  avgClass <- tapply(score$평균, score$반, mean)   # by와 tapply의 차이는? 
                                                   # 일단 하나의 열을 factor에 따라 처리
  
  # 반복문이 돌면서 그래프 그리기
  if (i == 1) {
    par(family = "AppleGothic")                    # 그래프에 한글깨짐 오류 수정
    plot(avgClass, ylab = "meanavg", xlab = "index", ylim = c(70,120), 
         type = "o", lty = 1, lwd = 1, pch = 1, col = i, axes = FALSE)
  } else {
    lines(avgClass, col = i, lwd = 1, pch = 1, lty = 1, type = "o")
  }                           # 첫번째 반복에서 그래프 전체를 그리고 다음부터는 라인
}                             # plot에서 x,y축을 'axes = FALSE'로 지우고
                              # 아래 'axis' 함수로 다시 그려주기
axis(1, at = 1:dataNum, labels = c("1반", "2반", "3반", "4반"), las = 1)  # las : 숫자가 세로(1), 가로(2)
axis(2, las = 1)
legend("topright", dataNickname, fill = c(1:dataNum), bty ="o") 


# 반복문에 if를 쓰지 않고 간단히 하는 법
# for 함수 안에 plot을 그리는 순서에서 아래와 같이 par함수 사용
plot(avgClass, ylab = "meanavg", xlab = "index", ylim = c(70,120), 
     type = "o", lty = 1, lwd = 1, pch = 1, col = i, axes = FALSE)
axis(1, at = 1:dataNum, labels = c("1반", "2반", "3반", "4반"), las = 1) 
axis(2, las = 1)

par(new = TRUE)    # 기존 그래프 화면에 새로운 꺾은 선을 추가