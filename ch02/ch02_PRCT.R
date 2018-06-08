Sys.setlocale(category = "LC_CTYPE", locale = "ko_KR.UTF-8")

str <- "801214"      # 801214를 문자열로 인식하게 해야함
year <- substr(str, 1, 2)
month <- substr(str, 3, 4)
day <- substr(str, 5, 6)
date1 <- paste(year, "년", month, "월", day, "일")
print(date1)

birth <- as.numeric(801214)      # 숫자형 데이터로 변환하기 
birthLength <- nchar(801214)      # 문자열의 길이 알아보기
seperate <- strsplit("801214", "1")  # 구분자로 문자열 분할하기
print(seperate)

change <- sub("1", "0", str)    # 왼쪽에서 첫 번째 해당 문자열을 다른 문자열로 대체하여 저장
change2 <- gsub("1", "0", str)    # 모든 해당 문자열을 다른 문자열로 대체하여 저장

phoneNum <- "01045678934"
num1 <- substr(phoneNum, 1, 3)
num2 <- substr(phoneNum, 4, 7)
num3 <- substr(phoneNum, 8, 11)
phoneRenum <- paste(num1, "-", num2, "-", num3)
print(phoneRenum)
