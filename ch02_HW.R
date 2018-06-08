diameter <- 40
height <- 50
sizeRound <- 3.14 * (diameter / 2)^2
volume <- sizeRound * height
numBottle <- volume / 500
numBottle <- ceiling(numBottle)     # numBottle이 정수가 아닌 실수 이기 때문에 소수점을 담을 병이 하나 더 필요(올림)
print(numBottle)