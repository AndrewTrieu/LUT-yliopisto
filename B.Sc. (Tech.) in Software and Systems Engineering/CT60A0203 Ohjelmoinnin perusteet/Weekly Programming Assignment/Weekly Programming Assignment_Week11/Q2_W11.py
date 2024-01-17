def binsearchList(l1, value):
    l1.sort()
    left = 0
    right = len(l1)-1
    while left<=right:
        middle = int(((left+right)/2))
        if value==l1[middle]:
            return middle
        
        elif value>l1[middle]:
            left = middle+1
        else:
            right = middle -1
    return "not exists"

#Main program
list1 = [12,34,23,89,20]
print(binsearchList(list1, 89))
print(binsearchList(list1, 189))

