#원하는 정보만 가져오기
setwd("~/Desktop/R_Project/R_data")
movie <- read.xlsx("movielist.xlsx", 1, startRow = 4, rows = c(4:24), 
                   cols = c(1,2,4,9,12), colNames = TRUE)
# 일반 xlsx 패키지가 에러나서 'openxlsx' 패키지 이용함


#누적관객수를 기준으로 내림차순 정렬
movie2 <- movie[order(movie$누적관객수, decreasing = TRUE),]
# 1)movie 파일에서 2)행을 순서대로 정리할건데 3)어떤 조건으로 순서를 정하냐면 4)누적관객수가 내림차순으로


#정렬된 데이터 내보내기
write.xlsx(movie2, "movie_list_dec.xlsx")



#예제
setwd("~/Desktop/R_Project/R_data")
amb1 <- read.xlsx("last_amb_hour_day.xlsx", startRow = 4, rows = c(4,6:22), cols = c(1:7), colNames = TRUE)
# openxlsx 패키지는 불러올때 데이터 유형을 지정해서 가져올 수는 없는듯


amb2 <- amb1[(amb1$PM10 >= 50)&(amb1$PM2.5 >= 30),]

write.xlsx(amb2, "amb_result.xlsx")
