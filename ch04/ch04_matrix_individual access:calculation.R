#Access
score <- matrix(c(80, 60, 90, 70, 70, 50, 100, 80, 95, 70, 95, 80), nrow = 4)

score[2, 2] <- score[2,2] + 20
print(score)

kor <- score[ ,1]     #모든 행, 모든 열을 선택할 때 띄어쓰기 상관없음
print(kor)        #1열을 뽑아왔지만 기본적으로 행으로 표현됨 score[,1, drop=TRUE] -> 벡터

kor <- score[,1, drop=FALSE]  # 4x1의 행렬로 표현 및 인식

substu <- score[c(2, 3), c(2, 3)]
print(substu)


# Calculation
midSco <- matrix(c(80, 60, 90, 70, 70, 50, 10, 80, 95, 70, 95, 80), nrow = 4)      #3번의 영어 중간성적이 잘못 입력됨
finSco <- matrix(c(85, 75, 95, 80, 80, 70, 95, 90, 90, 85, 90, 85), nrow = 4)
midSco[3, 2] <- 100
totalSco <- midSco + finSco
print(totalSco)

# row/column naming
midSco <- matrix(c(80, 60, 90, 70, 70, 50, 10, 80, 95, 70, 95, 80), nrow = 4)
colnames(midSco) <- c("국어", "영어", "수학")
rownames(midSco) <- c("정우성", "김철수", "송중기", "김영희")
print(midSco)
