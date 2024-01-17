#BMI calculation
w = float(input("Enter your weight in pounds:"))
h = float(input("Enter your height in inches:"))
bmi = (w*0.45359237)/ ((h*0.0254)**2)
print("your BMI is:",bmi)

if bmi<16:
    print("SUW")
    
elif bmi<18:
     print("UW")
     
elif bmi<24:
     print("NW")
     
elif bmi<29:
     print("OW")
     
elif bmi<35:
     print("SOW")
     
else:
     print("GOW")
    
        