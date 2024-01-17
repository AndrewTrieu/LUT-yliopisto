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

def PermuataionSet(n):
    str1 = list(n)
    if len(str1) <= 1:
        print(n)
    else:
        for i in range(0, len(n)):
            str1[0], str1[i] = str1[i], str1[0]
            PermuataionSet(str1[1:])
            str1[0], str1[i] = str1[i], str1[0]



#sortData("Names.txt")
set1 = {1,2,3}
PermuataionSet(sorted(set1))