kor <- scan()     # 내가 원하는 만큼의 원소를 가진 벡터 설정
print(kor)

charValue <- scan(what = character())   # what = : 어떤 형식의 데이터로 읽어들일 것인지
print(charValue)

# 수치와 문자를 한번에 하고 싶을때는 리스트 형식으로 
listValue <- scan(what = list(name = character(), kor = numeric(), eng = numeric()))
print(listValue)