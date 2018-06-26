## STRSPLIT : 나누기
list_word <- strsplit("7-24-2017", split = "-"); print(list_word)
# 구분자를 기준으로 split하여 리스트로 저장

word <- strsplit("2017.7.24", split=".") # .은 정규표현식에서 어떠한 모든 문자를 의미
word1 <- strsplit("2017.7.24", split=".", fixed = TRUE) # fixed = TRUE : 정규표현식이 아닌 문자로 .을 인식
word2 <- strsplit("2017.7.24", split="\\.") # \\ : 문자 .으로 인식


## UNLIST : 리스트에서 벡터로 바꾸기
vec_word <- unlist(list_word); print(vec_word)
# 리스트를 벡터로 변환하여 저장 (빈도수 체크라던지의 작업은 벡터로 가능) 


## PASTE : 합치기
pword1 <- paste("2017", "5", "30")           # 2017 5 30 : 구분자를 공백으로 인식하여 문자열 연결
pword2 <- paste("2017", "5", "30", sep="-")  # 2017-5-30 : 구분자를 주어진 문자로 인식하여 연결


## 대체하기
txt <- "Text Analytics is useful. Text Analytics is also interesting."

new_txt_1 <- sub("Text", "Data", txt) # 문자열에서 처음 나타나는 패턴만 대체
new_txt_2 <- gsub("Text", "Data", txt) # 문자열에 나타난 모든 패턴에 대해 대체

## 제거하기
txt <- "Text-Analytics is useful.\n Text-Analytics is also interesting.\n"

txt1 <- gsub("\n", "", txt)  # \n 제거하기
txt2 <- gsub("-", " ", txt)  # 공백으로 대체하기 


## 대문자/소문자 바꾸기
txt <- "Text Analytics is useful. Text Analytics is also interesting."

txtCap <- toupper(txt) # 소문자 -> 대문자
txtDecap <- tolower(txt) # 대문자 -> 소문자