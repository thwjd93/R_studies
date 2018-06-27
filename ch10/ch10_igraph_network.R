#library(igraph)

setwd("~/Desktop/R_Project/R_data/R언어교재자료(학생용)/ch_10")
emp <- read.csv("회사관계도.csv", header = T, fileEncoding = "CP949", encoding = "UTF-8")

# [데이터프레임 편집]
# 파일에 상사는 성명 + 직급으로 표시되어있기에 '성명'열과 '직급'열을 결합해야
name <- paste(emp$성명, emp$직급)
superior <- emp$상사
relations <- data.frame(name, superior)

#[관계 표현하기]
g <- graph.data.frame(relations, directed = TRUE)   #directed : 방향성 그래프를 넣을 것인지 (->)
print(g)

#이것도 한글 깨짐 어떻게 해야하는지..? 
plot(g, layout = layout.svd, vertex.size = 5, edge.arrow.size = 0.3)
# layout : 말그대로 그래프형태 설정, 다양한 형태가 있음(help 참조)
# vertex.size : 노드의 크기
# vertex.label : 디폴트는 노드의 이름, 'NA'를 입력하면 이름 사라짐
# edge.arrow.size : 화살표의 크기
# 여기에 들어갈 데이터 'g'는 이미 igraph의 함수로 데이터 처리되어 있어야 함