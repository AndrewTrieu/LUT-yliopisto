import math
def isValidTriangle(a,b,c):
      
    if a>0 and b>0 and c>0:
        if (a+b)>c and (a+c)>b and (b+c)>a:
            return True
        else:
            return False

def areaOfTriangle(a,b,c):
    if isValidTriangle(a,b,c):
        p = (a+b+c)/2
        s = math.sqrt(p*(p-a)*(p-b)*(p-c))
        print("area:",s)
    else:
        print("Can't form a triangle")

#main program
a = float(input("Side1:"))
b = float(input("Side2:"))
c = float(input("Side3:"))
areaOfTriangle(a,b,c)

    
