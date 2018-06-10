kor <- c(80, 90, 70, 65, 55, 30, 60, 90, 88, 100, 76, 30, 55, 61, 89, 68, 78, 70, 88, 82)
eng <- c(70, 95, 88, 75, 55, 42, 66, 89, 95, 98, 88, 35, 60, 68, 90, 70, 75, 80, 78, 88)
mat <- c(88, 90, 86, 80, 62, 50, 65, 84, 88, 92, 80, 45, 66, 77, 89, 80, 80, 85, 70, 90)

total <- kor + eng + mat
avg <- total / 3

print(avg, digit = 3)   # digit은 유효 자릿수의 최소 수

hist(avg, col = rainbow(10), xlab = "평균", ylab = "빈도수")  
# col = colour to be used to fill in the bars 
# 색 지정 후 숫자는 어떤 정도로 색을 표현할 것 인지 (gray의 경우, [0,1])
# xlab, ylab은 각 축의 label(title)