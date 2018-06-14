#access
kor <- c(80, 60, 90, 70)
kor[3] <- 95          
#[ ]표시로 변수 내 원소 지정
eventStd <- kor[c(2,4)]     
#연속하지 않은 원소 지정 시 벡터 형태로
print(eventStd)


#calculation
kor <- c(80, 60, 90, 70)        #원소의 갯수가 같을 떄
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
total <- kor + eng + mat
cat("each student's total score : "); print(total)

res <- kor / mat
cat("res : "); print(res)

kor <- c(80, 60, 90, 70)        #원소의 갯수가 다를 때는 경고 메세지가 뜨고, R언어의 재활용 규칙에 따라 처리
mat <- c(95, 70, 95)



