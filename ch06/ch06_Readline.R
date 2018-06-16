#Readline 함수
name <- readline("Input your name : ")    #사용자가 보게 되는 메세지 / 콘솔창에 입력하면 그것이 name 변수에 자동 저장
print(name)

#상호작용이 없는 프로그램(일방향적인 정보입력)
wei <- 70
hei <- 177
vBmi <- (wei * 10000) / (hei^2);
cat("당신의 BMI지수는", vBmi, "입니다.", "\n")

#상호작용이 가능한 프로그램
inWei <- readline("당신의 몸무게는 ? ")     # 문자형으로 저장되기 때문에 숫자형으로 변환해줘야 함
inHei <- readline("당신의 키는 ? ")

Wei <- as.numeric(inWei)
Hei <- as.numeric(inHei)

vBmi <- (Wei * 10000) / (Hei^2);
cat("당신의 BMI지수는 ", vBmi, "입니다.", "\n")

sprintf("몸무게가 %d이고, 키가 %d인 당신의 BMI지수는 %.2f입니다. \n", Wei, Hei, vBmi)
