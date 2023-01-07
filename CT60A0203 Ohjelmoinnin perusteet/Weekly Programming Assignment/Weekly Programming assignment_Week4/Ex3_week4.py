i = 1
n = int(input("Number of time the input to be asked:"))
neg = 0
pos = 0
zeo = 0
while(i<=n):
    x = int(input("Enter any integer as input:"))
    i = i+1
    
    if x==0:
        zeo = zeo + 1
    
    elif x>0:
        pos = pos + 1

    else:
        neg = neg + 1

print ("Positive:",pos)
print ("Negative:",neg)
print ("Zeros:",zeo)