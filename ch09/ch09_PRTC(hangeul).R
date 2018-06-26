setwd("~/Desktop/R_Project/R_data")
speech <- readLines("ch09_president's_speech.txt")

# 한글 형태소 분석을 위해서는 KoNLP, rJava, pkgconfig 패키지가 설치 및 로딩되어있어야 함
# 한글 사전은 useNIADic()을 통해 다운로드


##
symNotUsed <- c("\\.", ",")
for (ch in symNotUsed) {
  speech <- gsub(ch, "", speech)
}
## 한글에서는 명사 추출을 해야하니까 사실상 온점,반점 같은 거는 안 없애도 됨


nounList <- extractNoun(speech)  # 명사 추출하기 : 단어분할 strsplit 대신 한글에서는 명사 추출
nounWords <- unlist(nounList)  # 추출된 명사 리스트를 하나의 벡터로
nounWords <- nounWords[nchar(nounWords) >= 2]   # 글자 수가 2이상인 단어 추출

nounCount <- table(nounWords)   # 빈도 수(테이블 값)
nounCount <- sort(nounCount, decreasing = TRUE)  # 내림차순 정리
# nounCount <- head(sort(nounCount, decreasing = TRUE), 20): 빈도수 내림차순으로 정리한 것에서 상위 20개 추출
nounCount <- nounCount[nounCount >= 5]  # 빈도 수가 2 이상인 원소


par(family = "AppleGothic")
par(mar = c(4,7,4,4))    # 그래프 여백 설정 c(아래, 왼, 위, 오른)
barplot(nounCount, main = "문대통령 취임사", col = rainbow(12),
        horiz = TRUE, xlim = c(0,32), las = 1)  
# las = 데이터 값을 가로형(1)으로 둘거냐 세로형(2)으로 둘거냐
