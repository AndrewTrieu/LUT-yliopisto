list1 = []
while True:
    try:
        x = input("Enter a float value:")
        if x=="0":
            break
        if str(x).count(".")!=1 or float(x)<0: 
            raise ValueError
        
    except ValueError:
        print("Give only positive float numbers")
    
    else:
        list1.append(float(x))
        
list1.sort()
for i in list1:
    print(i)
    