bnb <- 120000
wTax <- bnb * 1.1
wSer <- wTax * 1.15
print(wSer)


K <- 200
C <- K-273
Fahr <- C*1.8 + 32
print(Fahr)


prodCode <- "TVLED48W"
Cate <- substr(prodCode, 1, 5)
size <- substr(prodCode, 6, 7)
color <- substr(prodCode, 8, 8)
proInfo <- paste(Cate,"-",size,"-",color)
print(proInfo)

