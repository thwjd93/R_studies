# 각 열(속성)별로 생성한 후 data.frame() 함수로 모든 열(속성)을 합쳐 데이터 프레임 완성
number<- seq(1:4)
name <- c("정우성", "김철수", "송중기", "김영희")
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
grade <- c("B", "D", "A", "C")
stuInfo <- data.frame(number, name, kor, eng, mat, grade, stringsAsFactors = FALSE)
# stringAsFactors: 나중에 해당 데이터를 묶어서 구분할거냐 (A끼리 묶어 표현하기, 성별로 나누기 등등 Grouping)
print(stuInfo)
str(stuInfo)    #datafrmae의 내부구조를 보자 (변수별 로 정보 출력)



#데이터 프레임의 변경/추출
stuInfo$kor[3] <- 85     #stuInfo 데이터 프레임에서 kor 열의 3번째 원소를 변경 (= stuInfo[3,3] <- 85)
scoKor <- stuInfo$kor    #stuInfo 데이터 프레임의 kor 열을 추출하여 scoKor에 벡터로 저장
stuOne <- stuInfo[3,]    #stuInfo 데이터 프레임의 3번째 학생의 데이터를 stuOne에 데이터프레임으로 저장
scores <- stuInfo[,c(3:5)]   #stuInfo의 3~5열 (국영수 성적)만 추출해 데이터프레임(행렬)으로 저장
students <- stuInfo[c(2,3),]   #stuInfo의 2,3번 학생의 정보를 추출해 데이터프레임으로 저장


#데이터 프레임에서 추출된 데이터 유형
stuInfo <- data.frame(번호=number, 이름=name, 국어=kor, 영어=eng, 수학=mat, 등급=grade, stringsAsFactors = FALSE)
res1 <- stuInfo$이름; print(res1)     # 윗 줄에서 설정한 태그값으로 열에 접근, 벡터로 반환
res2 <- stuInfo[[ 2]]; print(res2)    # res1과 같은 유형과 결과
res3 <- stuInfo["이름"]; print(res3)    # 그냥 태그로 접근하면 벡터가 아닌 데이터프레임으로 반환
res4 <- stuInfo[2]; print(res4)         # res3와 같은 유형과 결과

print(class(res1))   # 문자형 벡터
print(class(res3))   # 데이터 프레임


#데이터 프레임 항목(열) 및 레코드(행) 추가/삭제
sci <- c(95, 85, 75, 80)
stuNew1 <- list(5, "홍길동", 85, 95, 80, 90, "A")
stuNew2 <- list(6, "강개토", 95, 80, 90, "A")     # 성적 개수 오류
stuInfo <- cbind(stuInfo[,c(1:5)], sci, stuInfo[6])   # 과학점수 항목을 6열에 추가, 뒤에 stuInfo[,6]을 넣으면 안됨
stuInfo <- rbind(stuInfo[c(1:2),], stuNew1, stuInfo[c(3:4),])   # 5번학생 레코드를 3행에 추가
stuInfo <- rbind(stuInfo, stuNew2)    # 6번학생 레코드를 마지막 행에 추가; 데이터 개수가 일치하지 않아서 수행x

stuInfo <- stuInfo[-5,]   #해당 행 또는 열을 삭제
stuInfo <- stuInfo[-c(1,3),]  #벡터로 다중 선택 삭제도 가능