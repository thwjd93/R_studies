# 사용자 패키지 함수 만들기

#사칙연산 함수
fourCalcFn <- function(a,b) {
  totValue <- a+b; minusValue <- a-b
  mulValue <- a*b; divValue <- a/b
  cat(a,"+",b,"=", totValue)
  cat(a,"-",b,"=", minusValue)
  cat(a,"*",b,"=", mulValue)
  cat(a,"/",b,"=", divValue)
}

#나눗셈 계산과 나머지 함수
divFn <- function(a,b) {
  quotient <- a%/%b
  remainder <- a%%b
  cat(a,"%/%",b,"=", quotient)
  cat(a,"%%",b,"=", remainder)
}


# Rtools로 패키지 만들기
# 맥은 Rtools가 없음. 같은 기능을 쓰려면 Xcode Command Lines Tools을 다운 받을 것

# 새 프로젝트 만들기에서 R패키지를 새로 만들고 이름 명명
# 위치는 기본 폴더 아래 pkg로 잡아두고
# 위의 함수 선언을 ~/pkg/mycalculator/R/ 아래에 저장
# Build 탭에서 설치와 로드하기 누르면 내 오른쪽 패키지 탭에 들어와 있음
