def smallest(a, b, c):
    if a < b and a < c:
        print(a)
    elif b < a and b < c:
        print(b)
    else:
        print(c)


x = float(input('Enter the first number: '))
y = float(input('Enter the second number: '))
z = float(input('Enter the third number: '))
smallest(x, y, z)
