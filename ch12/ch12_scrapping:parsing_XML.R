all_news <- NULL
page <- 1:7

for ( i in page ) {
  url <- sprintf("https://news.naver.com/main/list.nhn?mode=LPOD&sid2=140&sid1=001&mid=sec&oid=001&isYeonhapFlash=Y&date=20180730&page=%d", i)
  # 링크자체는 XML 페이지를 의미하는 게 아니라서? RCurl 패키지의 getURL 함수를 사용 
  doc <- getURL(url)
  
  # XML패키지; 뉴스 기사 페이지의 html 요소들을 트리 구조로 가져오기
  parse_result <- htmlTreeParse(doc, useInternalNodes = TRUE) 
  
  # html 트리 구조에서 < a class = "nclicks(cnt_flashart)"...> 인 부분을 찾고 하위 요소가
  # <strong>인 부분의 내용만 추출하기
  newsTxt <- xpathSApply(parse_result, "//a[@class='nclicks(cnt_flashart)']//strong", xmlValue)
  
  all_news <- c(all_news, newsTxt)
}

# XML 패키지만으로는 해결할 수 없는 한글 코드 불일치
# rvest 패키지 함수로 해결
all_news2 <- repair_encoding(all_news)  # 한글 코드 불일치 해결 안됨
print(all_news2)
