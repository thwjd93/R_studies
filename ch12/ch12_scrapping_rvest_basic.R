# 다음 뉴스 랭킹 화면
url <- "http://media.daum.net/ranking/popular/"

# 다음 랭킹 뉴스 페이지의 html문서 불러오기
daumSrc <- read_html(url)

# 읽어온 html 소스코드에서 제목부분을 가져오기 위해 
# class = "link_txt" 부분만 불러온다
rankNewsTag <- html_nodes(daumSrc, ".link_txt")   # 앞에 .은 꼭 붙여줘야 함 class=가 있다는 표시
# 이는 제목과 본문을 둘다 가져오는 것

# 제목만 가져오고 싶다면
# 먼저 제목 html 태그를 불러오자
rankNewsTagTemp <- html_nodes(daumSrc, ".tit_thumb")
rankNewsTag <- html_nodes(rankNewsTagTemp, ".link_txt")
# 여기까지는 태그 + 텍스트 형태로 되어있기 때문에

# 텍스트 부분만 추출하기
rankNewsTxt <- html_text(rankNewsTag)
print(rankNewsTxt)

# 이후 불필요한 기호 삭제, 단어 통일 등 처리 해야
