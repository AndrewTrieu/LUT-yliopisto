def floatList(lst):
    a = 0
    for i in lst:
        if isinstance(i, float) == True:
            a += 1
    return a


L1 = [45, 89.0, 0, -0.45, 67, 12.2, 90, 38, 54.8]
print("Number of float values:", floatList(L1))
