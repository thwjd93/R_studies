#데이터 처리 자동화 - if else
inNum <- readline("임의의 자연수를 입력하세요 : ")    # 사용자로부터 정보를 입력 받음(문자로 입력)
number <- as.numeric(inNum)                           # 숫자형으로 변경
remainder <- number %% 2                              # 2로 나눈 나머지
 
if (remainder == 0) {                                 # if 다음에는 (조건식) { 결과 } else { 결과 }
  result <- "even number"
} else {
  result <- "odd number"
}

cat(number, "is an", result)




# if, else if 
score <- 85
if (score >= 90) {                  # 조건식 1
  grade <- "A"                      # 조건식 1이 TRUE
} else if (score >= 80) {           # 조건식 2
  grade <- "B"                      # 조건식 1이 FALSE, 조건식 2가 TRUE
} else { 
  grade <- "C"}                     # 조건식 1과 2 모두 FALSE

cat("Your grade is", grade) 