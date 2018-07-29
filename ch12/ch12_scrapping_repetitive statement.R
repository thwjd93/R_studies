# 총 23페이지의 영화 리뷰를 모두 가져오기 위한 반복문
allTxt = NULL;
page <- c(1:23)

for (i in page) {
  # [1] 다음 영화 평점 페이지 html 가져오기
  url <- sprintf("https://movie.daum.net/moviedb/grade?movieId=117020&type=netizen&page=%d", i)
  # 6강 문자열 변수 넣기 sprintf()
  daumMovie <- read_html(url)
  
  # [2] 해당하는 부분 / 텍스트 추출
  daumMovieTag <- html_nodes(daumMovie, ".desc_review")
  daumMovieTxt <- html_text(daumMovieTag)
  
  # [3] 불필요한 기호 삭제
  daumMovieTxt <- gsub("\n","", daumMovieTxt)
  daumMovieTxt <- gsub("\t","", daumMovieTxt)
  daumMovieTxt <- gsub("\r","", daumMovieTxt)
  
  # [4] 유의미한 문장만 골라내기
  daumMovieTxt1 <- daumMovieTxt[nchar(daumMovieTxt) >= 2]
  # daumMovieTxt1 <- filter(function(x){nchar(x) > 2}, daumMovieTxt)

  allTxt <- c(allTxt, daumMovieTxt1)
}

print(allTxt)