def myInfo(x):
    f1 = open(x)
    print(f1.read())
    f1.close()
    
#mainprogram
f = open("myInfo.txt","w")
f.write("Ashok Kumar"+ " "+"167.0"+" "+"65.0"+" "+"Turku")
f.close()
myInfo("myInfo.txt")
