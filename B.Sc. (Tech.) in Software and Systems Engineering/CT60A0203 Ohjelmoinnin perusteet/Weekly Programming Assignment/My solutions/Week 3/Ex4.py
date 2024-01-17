used = int(input("Enter the energy units consumed:"))
if used <= 50:
    print("Amount to  be paid:", (used*0.060)+2.50)
elif used > 50 and used <= 100:
    print("Amount to  be paid:", (50*0.060)+((used-50)*0.070)+2.50)
elif used > 100 and used <= 175:
    print("Amount to  be paid:", (50*0.060)+(50*0.070)+((used-100)*0.085)+2.50)
else:
    print("Amount to  be paid:", (50*0.060) +
          (50*0.070)+(75*0.085)+((used-175)*0.095)+3.50)
