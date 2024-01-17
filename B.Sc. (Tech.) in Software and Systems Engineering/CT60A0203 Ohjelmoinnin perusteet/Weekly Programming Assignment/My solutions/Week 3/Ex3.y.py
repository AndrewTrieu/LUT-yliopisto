items = int(input("Enter number of items bought:"))
print("Number of items bought:", items)
price = 10.0
if items == 0:
    print("Cost: 0.0")
elif items == 1:
    print("Cost:", price)
elif items == 2 or items == 3:
    print("Cost:", price*items*0.95)
elif items == 4 or items == 5:
    print("Cost:", price*items*0.90)
else:
    print("Cost:", price*items*0.80)
