#library(ggmap)

#[데이터 파일 불러오기]
setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_10");
loc <- read.csv("대한민국도시.csv", header = TRUE, fileEncoding = "CP949", encoding = "UTF-8")

#[지도 불러오기]
kor <- get_map("Jeonju", zoom = 7, maptype = "roadmap")  # 첫번째 인자는 중심이 될 도시
korMap <- ggmap(kor)  # 지정한 맵의 형태로 지도를 나타내기
print(korMap)

#[지도에 표시하기]
korMap1 <- korMap + geom_point(data = loc, aes(x=LON, y=LAT), size = 3, colour = "red")
print(korMap1)

#[그림으로 저장하기]
ggsave("대한민국도시.jpg", dpi = 200)




#예제 - 강수량
setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_10")
weatherInfo <- read.csv("한국평균기온강수량.csv", header = T, fileEncoding = "CP949", encoding = "UTF-8")

weather <- get_map("Jeonju", zoom = 7, maptype = "terrain")
weatherMap <- ggmap(weather)
print(weatherMap)

#[강수량 점 찍기]
theme_set(theme_gray(base_family='AppleGothic'))  # ggplot패키지에서 먹히는 한글 깨짐 오류 수정
weatherMap1 <- weatherMap + geom_point(data = weatherInfo, aes(x = LON, y = LAT, 
                                       size = 강수량, color = 강수량))
print(weatherMap1)

#[지역명 넣기]
# 위랑 같은 theme설정으로는 한글깨짐 해결 안됨..
weatherMap2 <- weatherMap1 + geom_text(data = weatherInfo, aes(x = LON+0.2, y = LAT+0.2, label = 지역),
                                       size = 5, color = "black")
print(weatherMap2)
