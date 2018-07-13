#매개변수가 없는 사용자 정의 함수
# 함수 선언 
calcScore <- function() {
  totValue <- sum(score1)
  avgValue <- mean(score1)
  cat("성적 합계:", totValue, "\n성적 평균:", avgValue)
}

# 프로그램 메인 부분
score1 <- c(70,80,90)
calcScore()           # 매개변수가 아닌 지정된 정보에 대한 사용자 정의 함수



#한 개의 매개변수가 있는 사용자 정의 함수
# 함수 선언
calcScore <- function(s) {
  totValue <- sum(s)
  avgValue <- mean(s)
  cat("성적 합계:", totValue, "\n성적 평균:", avgValue)
}

# 프로그램 메인
score1 <- c(70,80,90); calcScore(score1)
score2 <- c(40,55,90); calcScore(score2)
score3 <- c(78,96,50); calcScore(score3)
# 진짜 함수처럼 변수를 넣은 것에 대한 값이 도출
# 함수를 한번 선언해놓고 재사용



#여러 개의 매개변수가 있는 사용자 정의 함수
# 함수 선언
calcScore1 <- function(k, e, m) {
  totValue <- k + e + m
  avgValue <- totValue/3
  cat("성적 합계:", totValue, "\n성적 평균:", avgValue)
}

# 프로그램 메인
kor <- c(70,80,90,100)
eng <- c(80,75,65,96)
mat <- c(50,92,75,80)
calcScore1(kor,eng,mat)
# 변수로 들어가 있는 정보의 원소 순서대로 함수 처리



#반환값이 있는 사용자 정의 함수 return()
# 함수 선언
calcScore2 <- function(s) {
  totValue <- sum(s)
  avgValue <- mean(s)
  result <- c(totValue, avgValue)
  return(result)       #이 함수는 ()값으로 반환하겠다
}

# 프로그램 메인
score1 <- c(70,80,90,60);
result1 <- calcScore2(score1)
score2 <- c(80,75,65,96);
result2 <- calcScore2(score2)

if( result1[2] > result2[2] ){
  print("1반이 2반보다 더 성적이 우수합니다.")
} else {
  print("2반이 1반보다 더 성적이 우수합니다.")
}
