# for 
for(n in 1:5) {            # 1부터 5까지 반복하여 체크 후 프린트해라 
  print(n)
}  


x <- c(1,3,5)
for (n in x) {                       # 3번의 반복, x에 들어갈 원소가 3개 이기 때문에
  cat(n, "의 제곱: ", n*n, "\n")
}


#짝홀 카운트
evenCount <- 0
oddCount <- 0

x <- c(3,4,9,1,6,2,6,7,3)  
for (n in x) {                      # 9번의 반복
  if (n %% 2 == 0) {
    evenCount = evenCount + 1
  } else {
    oddCount = oddCount + 1
  }
}

cat("짝수의 개수 : ", evenCount, "\n")
cat("홀수의 개수 : ", oddCount, "\n")
