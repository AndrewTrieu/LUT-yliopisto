def sortData(filename):
    f1 = open(filename)
    names = f1.readlines() # transferring to list
    option = int(input("Ascending-1 or descending-2 order?"))
    
    if option==1:
        names.sort() # ascending order
    else:
        names.sort(reverse=True) # descending order
    
    for name in names:
        print(name.strip()) # print one data point
    
    f1.close()    

def perfectNumber(n):
    sum=0
    for i in range(1,n):
        if n%i==0:
            sum+=i
    
    if sum==n:
        return True

