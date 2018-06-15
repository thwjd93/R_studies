#부산시 5월 첫째 주 기온
date <- c("2017-05-01", "2017-05-02", "2017-05-03", "2017-05-04", "2017-05-05", "2017-05-06", "2017-05-07")
avgTemp <- c(20.1, 20.7, 21.5, 21, 20.9, 14.9, 16.6)
minTemp <- c(12.8, 15.2, 14.5, 14.8, 15.5, 10, 10.9)
maxTemp <- c(28.3, 28, 30.2, 27.5, 27, 19.3, 22.8)
BusanTemp <- data.frame(date, avgTemp, minTemp, maxTemp)

colnames(BusanTemp) <- c("일시", "평균기온", "최저기온", "최고기온")
print(BusanTemp)

avgAll <- mean(BusanTemp$평균기온)                 # BusanTemp$평균기온 : 벡터   = BusanTemp[[2]]
minAll <- apply(BusanTemp["최저기온"], 2, min)     # BusanTemp["최저기온"] : 데이터프레임
maxAll <- apply(BusanTemp[4], 2, max)              # BusanTemp[4] : 데이터프레임
cat("\n평균기온의 평균 = ", avgAll, "\n", "최저기온의 최저 = ", minAll, "\n", "최고기온의 최고 = ", maxAll, "\n")



# 평균기온이 20도 미만인 날만 추출
below20 <- BusanTemp[BusanTemp$평균기온 < 20, c(1:2)]
cat("\n평균기온이 20도 미만인 날은 : \n"); print(below20)

below20_2 <- subset(BusanTemp, subset = (평균기온 < 20), select = c(일시, 평균기온))
cat("\n평균기온이 20도 미만인 날은 : \n"); print(below20_2) 
# subset(대상, 추출 조건, 반환할 열(벡터형식)) : 데이터 프레임의 부분을 추출