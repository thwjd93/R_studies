setwd("~/Desktop/R_project/R_data")

#scan()
eng <- scan("ch06_score.txt")  # 데이터 유형을 설정하지 않으면 디폴트로 숫자로 인식/ 벡터뿐 아니라 리스트, 행렬도 가능
print(eng)

listValue <- scan("ch06_score_list.txt", what = list(name = character(), kor = numeric(), eng = numeric(), mat = numeric()))
cat("\nlistValue : \n"); print(listValue)
#리스트로 불러올 시 what = list() 을 꼭 설정해줘야함! 단순 문자형으로 불러오면 what = character()


#이는 벡터 형태로 들어오게 됨