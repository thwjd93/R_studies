s_date <- "2017-5-20"
date1 <- as.Date(s_date)
date2 <- date1 + 1000
print(date2)

date3 <- as.character(date2,format="%Y년 %m월 %d일")   # ~~년 ~~월 ~~일의 형태로 
print(date3)ㅣ