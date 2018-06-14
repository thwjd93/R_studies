#행이 4개인 행렬, 열 우선 채움
data <- c(80, 60, 90, 70, 70, 50, 100, 80, 95, 70, 95, 80)
score <- matrix(data, nrow = 4, byrow = FALSE)     # byrow 디폴트값은 false = 열 우선
print(score)


#벡터 결합
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)

scoreC <- cbind(kor, eng, mat)     # 열 단위로 결합해 행렬 생성
cat("cbind : \n"); print(scoreC)
scoreR <- rbind(kor, eng, mat)    # 행 단위로 결합해 행렬 생성
cat("rbind : \n"); print(scoreR)   
# 전부 cat으로 안 묶은 이유는 문자열 먼저 띄우고, 행렬을 제대로 표현하기 위해(함수 연결은 ;)

