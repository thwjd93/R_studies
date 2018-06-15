stuOneData <- list(Number=1, Name="김철수", scoKor=60, scoEng=50, scoMat=70, grade="D")
#stuOneData <- list(1, "김철수", 60, 50, 70, "D") : 항목명 없으면 데이터 유형과 값 밖에 안 들어가서 확인 힘듬
print(stuOneData)


#list 원소 추가/변경/삭제
stuOneData <- list(Number=1, Name="김철수", scoKor=60, scoEng=50, scoMat=70, grade="D")
stuOneData$scoEng <- 60    # 기존 리스트의 scoEng 항목의 값을 변경
stuOneData$scoSci <- 90    # 기존 리스트에 scoSci 항목과 값을 추가
stuOneData$grade <- NULL   # 기존 리스트의 grade 항목 값을 삭제
