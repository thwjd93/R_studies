# 근무기간 계산하기 (lubridate 함수)

#문자열 형식의 입사일을 날짜형으로 바꾸기
date1 <- "2011-03-02"
hiredDate <- ymd(date1)
print(hiredDate)

#오늘 날짜
todayDate <- Sys.Date()
print(todayDate)

#날짜 간격/근무기간 계산하기(interval은 단순히 기간을 인식하는 것 정도)
diffDate <- interval(hiredDate, todayDate)
print(diffDate)

#근무 기간을 "며칠", "몇개월 며칠", "몇년 몇개원 며칠"로 출력하기
diffDays <- as.period(diffDate, unit="days")
diffMonths <- as.period(diffDate, unit="months")
diffYears <- as.period(diffDate, unit="years")
#unit을 설정하지 않으면 ymd 형태로 자동 출력

print(diffDays)
print(diffMonths)
print(diffYears)

