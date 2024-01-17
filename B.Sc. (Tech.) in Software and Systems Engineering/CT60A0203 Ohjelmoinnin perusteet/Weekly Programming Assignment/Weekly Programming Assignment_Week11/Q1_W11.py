def LinearSearchNumber(l1,number):
    x=0
    for i in l1:
        if number==i:
            print ("It exists:",l1.index(i))
            x = x+1;
            break
    if x ==0:
        print ("It does not exist")
#main program
list1 = [12,34,78,11,90,45,12.4,34.10,78.3,11.5,90.12,45.6]
try:
    n = input("Enter a search value:")
    y = float(n)
    if n.isalpha()==True:
        raise ValueError          
except ValueError:
    print("Search value must be int or float")
else:
    LinearSearchNumber(list1,y)