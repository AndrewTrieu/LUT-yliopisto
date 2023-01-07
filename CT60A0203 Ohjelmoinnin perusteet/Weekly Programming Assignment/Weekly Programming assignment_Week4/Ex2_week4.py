def leapYears(x,y):
    count = 0
    for i in range(x,y+1):
        if i%4 == 0 and i%100 !=0 or i%400 == 0:
            print (i)
            count = count + 1

    return count    

#main program
x = int(input("Start year:"))
y = int(input("End year:"))
print(leapYears(x,y))