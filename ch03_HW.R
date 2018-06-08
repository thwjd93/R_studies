sales <- c(1200, 1500, 2500, 2700, 3000, 2200, 3200, 4000, 2800, 3500, 2400, 1800)
sumSales <- sum(sales)
avgSales <- mean(sales)
maxSales <- max(sales)
maxMonth <- which.max(sales)
minSales <- min(sales)
minMonth <- which.min(sales)
sortSales <- sort(sales, decreasing = TRUE)

cat("총 판매 실적 = ", sumSales, "월 평균 판매 실적 = ", avgSales, "\n")
cat("월 최대 판매 금액 = ", maxSales, "최대 판매한 달 = ", maxMonth, "월", "\n")
cat("월 최저 판매 금액 = ", minSales, "최저 판매한 달 = ", minMonth, "월", "\n")
cat("판매 금액 높은 순 정렬 = ", sortSales)

