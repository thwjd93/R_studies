#텍스트파일을 문자열 벡터로 불러들이고 내보내기

setwd("~/Desktop/R_Project/R_data")  #현 작업 폴더 지정, 파일을 읽고 불러들일때는데 항상 working directory를 지정해야 
#tmp = getwd()   # 현 작업 폴더 확인
#print(tmp)

txtLines <- readLines("ch06_movie_list.txt")     # 한 줄 단위로 모두 읽어오기, 'n = 읽어올 라인 수' 설정하면 일부 가능
print(txtLines) 

txtLines2 <- readLines("ch06_movie_list.txt", n = 4)
writeLines(txtLines2, "ch06_movie_list_copy.txt")     #지정한 텍스트를 복사해서 파일로 생성

