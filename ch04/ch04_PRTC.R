#p121
kor <- c(80,60,90,70)
eng <- c(70,50,100,80)
mat <- c(95,70,95,80)

sumScore <- kor + eng + mat
avgScore <- sumScore/3
above80 <- avgScore>=80      #이거는 논리형 데이터로 출력
#above80 <- which(avgScore>=80) : 구체적으로 몇번째 원소가 그런지를 출력 -> 1 3

cat("세 과목 합계는", sumScore, "\n")
cat("세 과목 평균은", avgScore, "\n")
cat("평균이 80점 이상인가?", above80, "\n")


#p123
student <- matrix(c(58,63,85,69,90,100,95,99,80,32,98,45,90,89,60), 5,3,FALSE)
rownames(student) <- c("1번", "2번", "3번", "4번", "5번")
colnames(student) <- c("국어", "영어", "수학")

sumStu <- rowSums(student)     #apply(student, 1, sum)   : 적용할 행렬, 행별로 1;열별로 2, 적용 함수 (p124)
avgStu <- sumStu/3       #apply(student, 1, mean)

Student <- cbind(student, "합계"=sumStu, "평균"=avgStu)      #cbind, rbind 시에 이름을 바로 붙일 수 있음
print(Student, digit=3)

