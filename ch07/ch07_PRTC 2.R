# p.229
setwd("~/Desktop/R_Project/R_data")
unemploy <- read.xlsx("연령별_경제활동인구_총괄.xlsx")
Unemploy <- unemploy[,-1]
Unemploy1 <- t(Unemploy)   
# 데이터프레임의 행과 열을 전치하는 순간 행렬이 되어버리는..?


year <- c("2008년", "2009년", "2010년", "2011년", "2012년", "2013년", "2014년", "2015년", "2016년", "2017년")
colnames(Unemploy1) <- c("20대", "30대", "40대", "50대", "60세 이상")


un_20 <- Unemploy1[,1]    # plot에는 벡터(또는 단일 행렬)만 넣을 수 있기에 연령별로 벡터 생성
un_30 <- Unemploy1[,2]
un_40 <- Unemploy1[,3]
un_50 <- Unemploy1[,4]
un_60 <- Unemploy1[,5]

par(family="AppleGothic")
plot(un_20, main = "2008년~2017년 연령별 실업률(단위:%)",   # 벡터, 제목
     type = "o", lwd = 2,                                   # 그래프 형태, 선 두께, lty: 선종류
     col = "green",                                         # 그래프 색
     ylim = c(1,12), xlab = "", ylab = "", axes = FALSE)    # axes = FALSE : x,y축의 직선과 라벨 없어짐
                                                            # 따로 라벨/축을 그릴거라 전부 없애줌

axis(1, at=1:10, labels = year[2:11], las = 2)   # x 축에 label을 축과 직각으로 추가해 표현
axis(2, las = 1)                                 # y 축에 label을 축과 수평으로 표현
abline(h = seq(0,12,1), lty = 2, lwd = 0.1)      # grid()같은 건데 직접 행과 열을 몇개로 나눌지 입력
                                                 # h = horizontal / v = vertical / seq(시작, 끝, 얼마로)

lines(un_30, type = "o", lwd = 2, col = "red")   # 20대 그래프에 선을 추가
lines(un_40, type = "o", lwd = 2, col = "black")
lines(un_50, type = "o", lwd = 2, col = "blue")
lines(un_60, type = "o", lwd = 2, col = "cyan")

colour <- c("green", "red", "black", "blue", "cyan")  

legend(2,12, colnames(Unemploy1), horiz = F, cex = 0.5, col = colour, lty = 1)  
# 범례 추가
# 위치, 범례내용, 가로/세로, 크기, 범례별 색, 선 종류, 선 두께, bty(범례테두리)