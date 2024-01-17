unit = int(input("Enter the energy units consumed:"))

if unit<=50:
    amount = unit*0.060
    
elif unit<=100:
    amount = (50*0.060) + (unit-50)*0.070

elif unit<=175:
    amount = (50*0.060) + (50*0.070) + (unit-100)*0.085

else:
    amount = (50*0.060) + (50*0.070) + (75*0.085) +(unit-175)*0.095 + 1

total = amount + 2.5
print ("amount to  be paid:",total)