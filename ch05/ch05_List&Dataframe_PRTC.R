#p146
num <- c(1:5)
name <- c("송중기", "전지현", "송혜교", "김태희", "정우성")
kor <- c(58,63,85,69,90)
eng <- c(100,95,99,80,32)
mat <- c(98,45,90,89,60)
grade <- c("B", "D", "A", "C", "D")
midSco <- data.frame(학번=num, 이름=name, 국어=kor, 영어=eng, 수학=mat, 등급=grade, stringsAsFactors = FALSE)
print(midSco)



#과목별 합계/평균
totKor <- sum(midSco["국어"]); avgKor <- totKor/5
totEng <- sum(midSco$영어); avgEng <- totEng/5
totMat <- sum(midSco[5]); avgMat <- totMat/5
cat("\n국어 합계 =", totKor,";", "국어 평균 = ", avgKor, "\n")
cat("\n영어 합계 =", totEng,";", "영어 평균 = ", avgEng, "\n")
cat("\n수학 합계 =", totMat,";", "수학 평균 = ", avgMat, "\n")



#학생별 합계/평균
sumStu <- apply(midSco[3:5], 1, sum)      # midSco[3:5]의 범위를 sPos <- 3; tPos <- 5;로 설정하면 과목수가 늘어나도 쉽게 처리
avgStu <- apply(midSco[3:5], 1, mean)

#데이터프레임 합치기
stuInfo <- cbind(midSco[,c(1:5)], 합계=sumStu, 평균=avgStu, midSco[6])
cat("\n1반 학생 중간 성적 최종 : \n"); print(stuInfo, digits = 3)

Score <- data.frame(midSco$이름, sumStu, avgStu)
print(Score, digits=4)



#평균이 70점 이상인
baseScore <- 70
subScore <- Score[Score$avgStu >= baseScore,]    # Score[~~, ]의 , 를 해줘야 해당 열에서 70이상인 '행'을 선택
cat("\n1반 학생 중 평균이", baseScore, "점 이상인 학생은", "\n"); print(subScore, digits=4)

# 70점(상수)을 baseScore(변수)로 지정해서 사용하면 변경해야할 시에 좀더 빠르고 쉽게 한번만 고치면 됨/ 일단 베이스 숫자들을 변수로 처리
