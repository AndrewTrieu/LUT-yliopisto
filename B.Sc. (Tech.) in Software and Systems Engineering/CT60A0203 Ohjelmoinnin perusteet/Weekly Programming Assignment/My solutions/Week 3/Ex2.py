weight = float(input("Enter your weight in pounds:"))
height = float(input("Enter your height in inches:"))
bmi = (weight*0.45359237)/((height*0.0254)**2)
print("Your BMI is:", bmi)
if bmi <= 16:
    print("SUW")
elif bmi > 16 and bmi <= 18:
    print("UW")
elif bmi > 18 and bmi <= 24:
    print("NW")
elif bmi > 24 and bmi <= 29:
    print("OW")
elif bmi > 29 and bmi <= 35:
    print("SOW")
else:
    print("GW")
