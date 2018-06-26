setwd("~/Desktop/R_Project/R_data")
lyrics <- readLines("ch09_jingle_bells.txt")  # 파일에서 텍스트를 줄 단위로 읽어오기

# 데이터 전처리
lyrics <- gsub("\\.", "", lyrics)     # 불필요한 기호 제거
lyrics <- gsub("-", " ", lyrics)

symNotUsed <- c("\\.", "-")
for (ch in symNotUsed) {
  lyrics <- gsub(ch, "", lyrics)      # 불필요한 기호들이 많을 경우, 그리고 같은 작업을 반복할 경우 for 함수로
}

lyrics <- tolower(lyrics)   # 대문자를 소문자로
lyricsWord <- strsplit(lyrics, split = " ")  # 단어 단위로 자르기 (리스트)
lyricsWordList <- unlist(lyricsWord)    # 빈도수 처리를 위해 리스트를 하나의 벡터로 

lyricsCount <- table(lyricsWordList)  # 벡터 안에 있는 문자데이터의 빈도 수 체크
lyricsCount <- sort(lyricsCount, decreasing=TRUE)  # 내림차순으로 정렬
lyricsCount <- lyricsCount[lyricsCount >= 2]   # 테이블값이 2이상인 원소만 남겨라


# 빈도수로 바그래프 그리기
barplot(lyricsCount, horiz = TRUE, col = "green", 
        main = "Jingle bells lyrics", las = 1, xlim = c(0,7))

# 불용어(is to a 등등) 제거하기
lyricsWordUsed <- removeWords(lyricsWordList, stopwords("en"))   
# 각 언어에 대한 불용어가 이미 정의되어 있음
# 테이블 '값'으로는 해당 함수가 적용 안됨 -> 테이블 함수 처리 전 문자형 벡터 이용

lyricsWordUsed <- lyricsWordUsed[nchar(lyricsWordUsed) >= 1] 
# 불용어를 지워놓은 상태기때문에 불용어 자리는 공백("")
# 따라서 글자수가 있는 원소만 선택 : nchar (글자의 갯수)

lyricsCountUsed <- table(lyricsWordUsed)    # 테이블값 (수치형 데이터)
lyricsCountUsed <- sort(lyricsCountUsed, decreasing = TRUE)
lyricsCountUsed <- lyricsCountUsed[lyricsCountUsed >= 2]

barplot(lyricsCountUsed, horiz = TRUE, col = "mediumseagreen", 
        main = "Jingle bells lyrics", las = 1, xlim = c(0,7))
