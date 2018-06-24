x <- 0; base <- 100; multi <- 7

repeat {
  if (x>base) break        # 종료조건 명시를 필수로 하여 출력할 수 있게 함 (for와 while도 명시 가능)
  x <- x + multi
}

cat(base, "를 초과하면서", base, "에 가장 가까운", multi, "의 배수는", x, "이다.")