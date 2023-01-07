item = int(input("Enter number of items bought:"))
cost = item*10

if item ==1:
    cost = 10.0
    
elif item <=3:
    cost = cost -(cost*0.05)

elif item <6:
    cost = cost -(cost*0.1)

else:
    cost = cost -(cost*0.2)

print ("number of items bought:",item)
print ("cost:",cost)