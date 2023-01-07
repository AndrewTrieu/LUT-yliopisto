def floatList(List1):
    fl = 0
    for i in List1:
        if type(i)==float:
            fl = fl+1
    return fl

#main program
L1 = [45, 89.0, 0, -0.45, 67, 12.2, 90, 38, 54.8]
print("Number of float values:",floatList(L1))

