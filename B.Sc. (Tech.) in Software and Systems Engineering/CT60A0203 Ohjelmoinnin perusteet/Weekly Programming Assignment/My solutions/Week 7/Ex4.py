def sortTuple(tup):
    lst = list(tup)
    times = int(input("Number of integers as input:"))
    for i in range(times):
        a = int(input("Enter integer:"))
        lst.append(a)
    lst.sort(reverse=True)
    return lst


T1 = tuple()
T1 = sortTuple(T1)
print(T1)
