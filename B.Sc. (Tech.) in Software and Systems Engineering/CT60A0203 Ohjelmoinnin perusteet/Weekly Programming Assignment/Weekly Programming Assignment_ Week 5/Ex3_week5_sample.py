def isPositive(x):
    if x>0:
        return True
    else:
        return False
def areaCircle(r):
    if isPositive(r):
        print(3.14*(r**2))
    else:
        print("r value must be positive")

#main program
a= int(input("Enter the radius:"))
areaCircle(a)