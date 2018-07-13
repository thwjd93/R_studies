#[지도 사이즈와 종류 입력하면 자동으로 플롯 그리는 함수]
gmapFn1 <- function() {
  cat("지도 확대|축소 비율을 [3~10]사이의 정수로 입력하시오.", "\n")
  numZoom <- scan()
  cat("1: terrain, 2: hybrid, 3: watercolor", "\n")
  cat("원하는 지도 모양[1,2,3] 중에서 하나의 숫자를 입력하시오.", "\n")
  numMaptype <- scan()
  
  gmapFn2(numZoom, numMaptype)
}

gmapFn2 <- function(numZoom, numMaptype) {
  if (numMaptype == 1) {
    kor <- get_map("Jeonju", zoom = numZoom, maptype = "terrain")
  } else if(numMaptype == 2) {
    kor <- get_map("Jeonju", zoom = numZoom, maptype = "hybrid")
  } else {
    kor <- get_map("Jeonju", zoom = numZoom, maptype = "watercolor")
  }
  
  theme_set(theme_gray(base_family='NanumGothic'))  # 범례 한글 깨짐은 수정됨, 지도 내부는 ㄴㄴ
  korMap <- ggmap(kor)
  print(korMap)                 # 지도 밑바탕을 깔아줘야함 꼭!
  
  percMap <- korMap + geom_point(data = tempPerc, 
                                 aes(x=LON, y=LAT, colour= 강수량, size = 강수량))
  print(percMap)
  
  percMap1 <- percMap + geom_text(data = tempPerc, 
                                  aes(x=LON + 0.2, y=LAT + 0.2, label = 지역), 
                                  size = 5, colour = "black")
  print(percMap1)
}


#[메인]

#[데이터 불러오기]
setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_11")
tempPerc <- read.csv("한국평균기온강수량.csv", header = TRUE, fileEncoding = "CP949", encoding ="UTF-8")

gmapFn1()

ggsave("한국_평균강수량.jpg", scale = 2, width = 17, height = 4, dpi = 800)