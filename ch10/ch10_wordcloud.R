#한글 형태소 분석 환경 설정 
#library(wordcloud)
#library(KoNLP)
#library(NIADic)
#library(sejong)
#useNIADic()
#useSejongDic()

#[user dictionary]
proper_noun <- c('문대통령', '문재인');                #미리 유저 딕셔너리를 만들어놓고 나중에 추가
set_proper_noun <- data.frame(proper_noun, tag='ncn');
dics <- c('Sejong', 'insighter', 'woorimalsam');

#[파일 불러오기]
setwd("~/Desktop/R_Project/R_data")
news <- readLines("ch09_news_title.txt")

#[데이터 전처리]
news <- gsub("문재인 대통령","문대통령", news)  # 호칭 통일하기
news <- gsub("文대통령","문대통령", news)

buildDictionary(dics, "", set_proper_noun, replace_usr_dic = T) # 기존에 있는 유저 딕셔너리를 덮어쓰도록

# buildDictionary("NIADic", "", data.frame("문대통령", "ncn"))  
# '문대통령'이라는 단어를 하나의 고유명사로 추가

nounUsed <- extractNoun(news)  #명사 추출
nounUsed <- unlist(nounUsed)   #리스트를 벡터로

nounUsed2 <- nounUsed[nchar(nounUsed)>=2]  # 글자수가 2자리 이상인 단어만

nounCount <- table(nounUsed2)  #단어의 빈도 수
nounCount <- head(sort(nounCount, decreasing = T), 15)  # 내림차순으로 정리해서 상위 15개만
print(nounCount)

#[Word Cloud - 흑백]
par(family = "AppleGothic")
wordcloud(names(nounCount), freq = nounCount, scale = c(3,1),
          min.freq = 1, random.color = T, random.order = F, rot.per = 0.25) 
#rot.per : 90도 회전할 글자의 비율
#scale : 글자의 크기


#[Word Cloud - 컬러]
par(family = "AppleGothic")
library(RColorBrewer)
palette <- brewer.pal(9, "Set1")

wordcloud(names(nounCount), freq = nounCount, scale = c(3,1),
          min.freq = 1, random.color = T, random.order = F, rot.per = 0.25,
          colors = palette) 
# 앞서서 RcolorBrewer 패키지를 다운받고 색 팔레트를 설정해준 뒤 
# 'colors = '조건을 추가해주면 됨


