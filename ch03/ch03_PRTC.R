# 학생별 평균, 반 평균, 학생들의 평균 점수 중 최대 평균 점수, 최저 평균점수 구하시오
kor <- c(80, 90, 70, 65, 55, 30, 60, 90, 88, 100, 76, 30, 55, 61, 89, 68, 78, 70, 88, 82)
eng <- c(70, 95, 88, 75, 55, 42, 66, 89, 95, 98, 88, 35, 60, 68, 90, 70, 75, 80, 78, 88)
mat <- c(88, 90, 86, 80, 62, 50, 65, 84, 88, 92, 80, 45, 66, 77, 89, 80, 80, 85, 70, 90)

#combine으로 수를 변수에 저장하면 순서도 인식(?)해서 합계나 평균 시 차례로 계산 
total <- kor + eng + mat
avg <- total / 3
print(avg, digits =3)

classAvg <- sum(avg) /20
print(classAvg, digit =3)

maxAvg <- max(avg)
minAvg <- min(avg)
print(maxAvg, digit =3)
print(minAvg, digit =3)



#국어, 영어, 수학의 히스토그램
kor <- c(80, 90, 70, 65, 55, 30, 60, 90, 88, 100, 76, 30, 55, 61, 89, 68, 78, 70, 88, 82)
eng <- c(70, 95, 88, 75, 55, 42, 66, 89, 95, 98, 88, 35, 60, 68, 90, 70, 75, 80, 78, 88)
mat <- c(88, 90, 86, 80, 62, 50, 65, 84, 88, 92, 80, 45, 66, 77, 89, 80, 80, 85, 70, 90)

hist(kor, col = rainbow(10), xlab = "국어 점수", ylab = "학생 빈도 수")
hist(eng, col = gray(0), xlab = "영어 점수", ylab = "학생 빈도 수")
hist(mat, col = gray(1), xlab = "수학 점수", ylab = "학생 빈도 수")




#1년 총 강우량, 가장 많이 온 달, 비가 가장 적게 온 달 출력
rain <- c(100, 50, 150, 120, 80, 300, 600, 300, 200, 100, 70, 100)

yearRain <- sum(rain)
print(yearRain)

maxMonth <- which.max(rain)
cat(maxMonth, "월")

minMonth <- which.min(rain)
cat(minMonth, "월")



#두 사람의 나이 차이 
birth1 <- ymd("19950518")
birth2 <- ymd("19921214")
diffBirth <- interval(birth1, birth2)
diffAge <- as.period(diffBirth, unit="years")
print(diffAge)
