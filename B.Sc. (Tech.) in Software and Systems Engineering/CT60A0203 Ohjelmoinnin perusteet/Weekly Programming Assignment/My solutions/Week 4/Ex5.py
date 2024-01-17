money = float(input("Enter the amount you save per month: "))
interest = float(input("Enter the interest rate per year: "))
month = int(input("Enter the number of months: "))
monthlyinterest = (interest/100)/12
i = 0
print("Month 	 Amount in the account")
while i < month:
    i += 1
    total = (money + total)*(1 + monthlyinterest)
    print(i, " 	 ", round(total, 2))
