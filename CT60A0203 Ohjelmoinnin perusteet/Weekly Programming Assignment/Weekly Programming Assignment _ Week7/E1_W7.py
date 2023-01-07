List1 = []
i = 1
while i!=-1:
    x = int(input("Enter an integer number:"))
    if x ==-1:
        break
    else:
        List1.append(x)
        
print(sorted(List1,reverse=True))

