# 1) y축에 대한 값만 있을 때
kor <- c(61, 78, 95, 80, 72)
eng <- c(81, 87, 90, 70, 82)

plot(kor, type = "b", lty = "dotdash", pch = 1)
# plot에 들어갈 수 있는 데이터 유형은 벡터와 행렬만
# lty: 선의 종류, lwd: 선 두께, pch: 점의 종류 (p.211)

points(eng, type = "o", lty = 2, lwd=2, pch=2)   # 이미 그려진 플롯위에 점 또는 그래프 추가
grid()   #  격자 무늬 추가

txt = c("kor", "eng")
legend("topright", txt, pch = 1:2, bty = "n")
# legend에 여러 항목의 범례를 넣고자 하면 벡터형태로 넣어야함
# legend("범례위치", 범례 내용, 점의 모양, 항목 구분 여부)



# 2) x,y축 모두에 대한 값이 있을 때
kor <- c(61, 78, 95, 80, 72)
no <- c(201701, 201702, 201703, 201704, 201705)
plot(no, kor)  # plot(x,y)


# 3) data 셋을 불러서 사용
data("pressure")
print(head(pressure))   # pressure 데이터의 헤드부분(처음 6행까지)을 미리 보기
plot(pressure)
grid()



# 4) plot에 변화주기 (옵션으로)
data("pressure")
plot(pressure, type = "o",
     main = "Temp. & Press.",   # 그래프 메인 제목
     xlim = c(0, 400),    # x의 범주를 0부터 400까지
     ylim = c(0, 850),    # x의 범주를 0부터 400까지
     xlab = "온도", ylab = "기압",
     cex.lab = 1.1,       # 축 제목의 크기를 기존의 1.1배로, cex가 character expansion
     col = 2)             # col="red"




# 5) plot에 변화주기 (저수준 함수로)
plot(pressure)
title(main = "온도와 기압의 상관관계", col.main = "dark blue")  # 제목 추가
arrows(100, 200, 150, 10)    # 화살표 표시하기 (시작 좌료, 종료 좌표)
text(110, 250, "temperature & pressure", cex = 0.8, col = "blue")  # 글자 추가 
points(200, 600, pch = 8, cex = 2)  # 벡터나 행렬이 아닌 좌표를 넣으면 점으로 포인트찍힘

