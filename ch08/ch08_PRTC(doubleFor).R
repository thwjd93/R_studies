#성적 평균과 등급, 등수 추가

# 성적 데이터를 데이터 프레임으로
id <- c("1","2","3","4")                          # 학번
name <- c("정우성", "김철수", "송중기", "김영희")
kor <- c(80,60,90,70)
eng <- c(70,50,100,80)
mat <- c(95,70,95,80)
score1 <- data.frame(학번 = id, 이름=name, 국어점수=kor, 영어점수=eng, 수학점수=mat)

# 평균 구하기
avgValue <- apply(score1[,3:5], 1, mean)    # 벡터

# 등급 구하기
finalGrade <- c()                # 해당 벡터 초기화
for (n in avgValue) {            # 원소 4개(학생 수)에 대하여 4번 반복
  if (n>=90) {
  Grade <- "A"
} else if (n>=80) {
  Grade <- "B"
} else if (n>=70) {
  Grade <- "C"
} else if (n>=60) {
  Grade <- "D"
} else { 
  Grade <- "F" 
}                                # 여기까지가 ifelse 명령문 
  finalGrade <- c(finalGrade, Grade)    # 기존 finalGrade 벡터에 Grade 값을 차례대로 추가
}

# 데이터프레임에 합치기
score1 <- cbind(score1, 평균=avgValue, 등급=finalGrade)


# 등수 구하기
finalRank <- c()

for (x in avgValue) {               # 먼저 원소하나(기준 값)을 반복하는 명령문
  ranking <- 1
  for (y in avgValue) {             # 기준 값에 대한 비교를 위한 반복문
    if (x < y) {
      ranking <- ranking + 1
    }
  } 
  finalRank <- c(finalRank, ranking)
} 

score1 <- cbind(score1, 등수=finalRank)
print(score1)
