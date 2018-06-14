# 0에서 10000까지 중 3의 배수의 합
x <- seq(0, 10000, 3)
sum_x <- sum(x)
cat("0~10000 중 3배수의 합은", sum_x, "입니다.", "\n")

# p116
julyTemp <- c(31, 29, 30, 32, 35, 36, 34, 35, 32, 30, 29, 28, 26, 29, 34, 36, 35, 32, 30, 31, 32, 30, 35, 37, 35, 34, 32, 35, 31, 29, 28)
julyAvg <- mean(julyTemp)
cat("금정구의 7월 최고기온의 평균 온도는", julyAvg, "입니다.", "\n")

julyHottest <- max(julyTemp)
cat("금정구의 7월 중 가장 더운 날의 온도는", julyHottest, "입니다.", "\n")

cat("금정구의 7월 최고기온 중 35도 이상인 날은", length(julyTemp[julyTemp>=35]), "일 입니다.", "\n") 
# julyTemp[julyTemp>=35] : julyTemp에서 35도 이상인 원소들을 모아 일종의 벡터를 형성 (p106)

cat("금정구의 7월 중 가장 더웠던 날은", which.max(julyTemp), "일입니다.")


#p117
midSco <- matrix(c(80,60,90,70,70,50,100,80,95,70,95,80), 4,3,FALSE)
rownames(midSco) <- c("정우성", "김철수", "송중기", "김영희")
colnames(midSco) <- c("국어", "영어", "수학")
cat("중간고사 성적 : ", "\n"); print(midSco)

song <- midSco[3,]      #송중기의 중간고사 국어, 영어, 수학 점수는
cat("\n송중기 중간고사 점수 : \n"); print(song)           #나눠서 프린트 해줘야 변수명이 포함됨
totStu <- rowSums(midSco)    #학생별 전 과목 총점
cat("\n학생별 전 과목 총점 : \n"); print(totStu)
avgSub <- colMeans(midSco)    #과목별 평균
cat("\n과목별 평균 : \n"); print(avgSub)

