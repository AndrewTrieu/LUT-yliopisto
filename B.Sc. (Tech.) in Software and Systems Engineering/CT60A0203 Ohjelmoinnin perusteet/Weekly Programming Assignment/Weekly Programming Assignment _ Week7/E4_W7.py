def sortTuple(tuple1):
    L1 = list(tuple1)
    L1.sort(reverse = True)
    #tuple1 = tuple(L1)
    return tuple(L1)

#Main program
T1 = tuple()
x = int(input("Number of integers as input:"))
list1 = []
for i in range(x):
    y = int(input("Enter integer:"))
    list1.append(y)
T1 = tuple(list1)
T1 = sortTuple(T1)
print(T1)
