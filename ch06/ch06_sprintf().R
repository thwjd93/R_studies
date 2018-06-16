name = "홍길동"
sum = 254
avg = sum/3
outMsg <- sprintf("%s의 총점은 %d 점이고, 평균은 %.2f이다.\n", name, sum, avg)   # sprintf()의 방식은 p.169
cat(outMsg)
