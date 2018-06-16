#데이터 프레임 입력에 편리한 도구
student1 <- data.frame()
student1 <- edit(student1)     #항상 데이터 프레임과 함께 사용
print(student1)   #콘솔창에서만 보여짐

View(student1)   #V는 대문자, 따로 창을 볼 수 있어서 좋음

# Error in .External2(C_dataentry, datalist, modes) : 
# unable to start data editor
# In addition: Warning message:
# In edit.data.frame(student1) : unable to open display

# 맥에서는 R editor 사용 안 되는 듯..

