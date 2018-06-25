srcDir <- c("~/Desktop/R_Project/R_data/PRTC/")   # 데이터 파일 경로 설정
datafiles <- list.files(srcDir)                  # 경로에 있는 파일들을 문자형 벡터로
dataNum <- length(datafiles)                     # for 명령문을 위해서 파일 개수 

dataNickname <- c("2학년 1학기 중간", "2학년 1학기 기말", "2학년 2학기 중간","2학년 2학기 기말")

for (i in 1:dataNum) {                           # dataNum은 단순히 4를 의미하니까 1:를 붙여서 처음부터 읽어오게
  datafile <- paste(srcDir, datafiles[i], sep="") # 데이터 경로와 파일이름 연결하기
  
  score <- read.xlsx(datafile, sheet = 1, colNames = TRUE)  # 위에서 연결한 파일을 읽어오기
  
  cat("\n\n=========", dataNickname[i], "학년 전체 요약", "=========\n")
  print(summary(score[,c(5:7)]))                            # summary: 평균, 최대/최소값, 중앙값 등 기본 수치
  
  cat("\n\n=========", dataNickname[i], "반별 요약", "=========\n")
  print(by(score[,c(5:7)], score$반, summary))
}
