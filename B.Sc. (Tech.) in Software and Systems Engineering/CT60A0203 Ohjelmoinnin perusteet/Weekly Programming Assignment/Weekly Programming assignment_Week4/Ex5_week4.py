savings = float(input("Enter the amount you save per month:"))
inRate = float(input("Enter the interest rate per year:"))
months = int(input("Enter the number of months:"))

monRate = (inRate/100)/12

print("\nMonth","\t","Amount in the account")

for i in range(1,months+1):
    if i ==1:
       savplus = savings*(1+monRate)
       print (i, "\t", round(savplus,2))
         
    else:
       savplus = (savings + savplus) *(1+monRate)
       print (i, "\t", round(savplus,2))