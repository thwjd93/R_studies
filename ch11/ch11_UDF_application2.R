#[1: 파일 불러오기]
setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_11")
news <- readLines("ch11_1_news.txt")


#[2: 텍스트 전처리/ 빈도수 컷]
nounUsed1 <- extractNoun(news)  #명사 추출
nounUsed2 <- unlist(nounUsed1)   #리스트를 벡터로

nounUsed3 <- nounUsed2[nchar(nounUsed2)>=2]  # 글자수가 2자리 이상인 단어만


#[3: 텍스트 빈도수 값 부여]
nounCount <- table(nounUsed3)  #단어의 빈도 수
nounCount <- head(sort(nounCount, decreasing = T), 15)  # 내림차순으로 정리해서 상위 15개만


#[4: Wordcloud 생성]
par(family = "AppleGothic")
wordcloud(names(nounCount), freq = nounCount, scale = c(3,1),
          min.freq = 1, random.color = T, random.order = F, rot.per = 0.25)
#rot.per : 90도 회전할 글자의 비율
#scale : 글자의 크기




#[2],[4]를 사용자 함수로 바꾸기
extNounFn <- function(txt) {
  nounUsed1 <- extractNoun(txt)
  nounUsed2 <- unlist(nounUsed1)
  nounUsed3 <- nounUsed2[nchar(nounUsed2)>=2]
  return(nounUsed3)
}


wcFn <- function(wcData, wcColor, wcMinFreq) {
  if(wcColor == TRUE) {
    par(family = "AppleGothic")
    library(RColorBrewer)
    palette <- brewer.pal(9, "Set1")
    wordcloud(names(wcData), freq = wcData, scale = c(3,1),
              min.freq = wcMinFreq, random.color = T, random.order = F, rot.per = 0.25,
              colors = palette)
  } else {
    par(family = "AppleGothic")
    wordcloud(names(wcData), freq = wcData, scale = c(3,1),
              min.freq = wcMinFreq, random.color = T, random.order = F, rot.per = 0.25)
  }
}



# 사용자 함수 적용

setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_11")
news <- readLines("ch11_1_news.txt")

#[2]
nounUsed3 <- extNounFn(news)

nounCount <- table(nounUsed3)
nounCount <- head(sort(nounCount, decreasing = T), 15)

#[4]
wcFn(nounCount, TRUE, 2)
