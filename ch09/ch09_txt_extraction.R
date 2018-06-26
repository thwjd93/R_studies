# GREP
str_including_Pole <- grep("Pole", c("South Pole", "North Pole", "Equator"), value = TRUE)
print(str_including_Pole)
# Pole이 포함된 문자열을 추출
# value = TRUE : 추출할때 문자열 형태로 추출

index_of_Pole <- grep("Pole", c("South Pole", "North Pole", "Equator"), value = FALSE)
# Pole을 포함한 원소의 위치 반환
# value = FALSE : 해당 문자열의 위치 정보만


# SUBSTR
elec_code <- substr("LEDTV-48-B", 1, 5); print(elec_code)
# 주어진 문자열에서 1부터 5 위치의 문자열을 추출
