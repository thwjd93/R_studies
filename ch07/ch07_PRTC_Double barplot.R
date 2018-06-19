setwd("~/Desktop/R_Project/R_data")
data <- read.csv("서울시_연도별_강수량.csv", header = TRUE, stringsAsFactors = FALSE,
                 fileEncoding = "CP949", encoding = "UTF-8")

# 한글이 포함된 csv파일이나 엑셀파일 등을 그냥 읽어오면 멀티바이트 에러가 발생
# 따라서 fileEncoding = "CP949", encoding = "UTF-8" 를 함수에 추가

data1 <- data[, c(3,4,5)]
colnames(data1) <- c("년도", "년강수량", "일최다강수량")

par(mfrow = c(1,2))   # 함수를 벡터처럼 1행 2열의 형태로 배치

# (1.1) 함수
par(family="AppleGothic")    # 플롯에서 한글깨지는 것 방지(글꼴 설정)
barplot(data1$년강수량, main = "연도별 강수량 \n (단위mm)", 
        col = ifelse(data1$년강수량>1700, "red", "cyan"),
        xlab = "연도", ylab = "강수량",
        names.arg = data1$년도, space = 0.5)

# (1.2) 함수
barplot(data1$일최다강수량, main = "연도별 일최다강수량 \n (단위mm)",
        col = ifelse(data1$일최다강수량>200, "orange", "grey"), ylab = "강수량", 
        names.arg = data1$년도, space = 0.5)

