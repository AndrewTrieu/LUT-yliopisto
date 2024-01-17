def ListToSet(List1):
    set1 = set(List1)
    #print(set1)
    List1 = list(set1)
    print(sorted(List1))
    
def inputList():
    n = int(input("Enter number of elements:"))
    List1 = []
    # iterating till the range
    for i in range(0, n):
        x = (input("Enter value for list:"))
        List1.append(x)
    ListToSet(List1)

#main program
inputList()



