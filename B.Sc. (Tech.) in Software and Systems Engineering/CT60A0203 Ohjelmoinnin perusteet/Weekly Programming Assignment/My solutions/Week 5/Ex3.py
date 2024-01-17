import math


def isValidTriangle(a, b, c):
    if ((a+b) > c) and ((b+c) > a) and ((a+c) > b):
        return True
    else:
        return False


def areaOfTriangle(a, b, c):
    if isValidTriangle(a, b, c):
        s = (a+b+c)/2
        area = math.sqrt(s*(s-a)*(s-b)*(s-c))
        print('Area: ', area)
    else:
        print("Can't form a triangle")


x = float(input('Side1: '))
y = float(input('Side2: '))
z = float(input('Side3: '))
areaOfTriangle(x, y, z)
