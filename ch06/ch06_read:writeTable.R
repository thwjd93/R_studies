setwd("~/Desktop/R_project/R_data")

# 항목명(첫행=header)가 없음
score1 <- read.table("ch06_score_list.txt", header = FALSE, stringsAsFactors = FALSE)   

# 항목명(첫행=header)가 있음/ space로 구분
score2 <- read.table("ch06_score_space.txt", header = TRUE, stringsAsFactors = FALSE)   

# 문자 "구분 / ,(comma)로 구분
score3 <- read.table("ch06_score_comma.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
# 한글이 포함된 csv 파일은 안 읽힘(맥 문제인지 엑셀 프로그램 호환 문제인지 모르겠음)


#데이터 테이블 내보내기
kor = c(80,90,70)
write.table(kor, "kor1.txt")  # quotation 들어가고 행 이름도 1,2,3...으로 자동 추가
write.table(kor, "kor1.txt", quote = FALSE, row.names = FALSE, col.names = FALSE)  # 아무것도 없이 숫자 데이터만


#예제 
setwd("~/Desktop/R_project/R_data")
Score1 <- read.table("ch06_score_space.txt", header = TRUE, stringsAsFactors = FALSE)

sum_stu <- apply(Score1[,c(2:4)], 1, sum)
avg_stu <- apply(Score1[,c(2:4)], 1, mean)

Score2 <- cbind(Score1, sum = sum_stu, avg = avg_stu)
write.table(Score2, "ch06_score_total.txt", quote = FALSE, row.names = FALSE, col.names = TRUE)  
# 첫 문자열 데이터의 행을 열 이름으로 사용한다 : col.names = TRUE
