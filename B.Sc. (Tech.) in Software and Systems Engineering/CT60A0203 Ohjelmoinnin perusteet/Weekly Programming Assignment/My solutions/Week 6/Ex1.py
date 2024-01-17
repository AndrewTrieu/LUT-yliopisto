def myInfo(txt1):
    f1 = open(txt1, 'r')
    print(f1.read())


a = 'Ashok Kumar'
b = 167.0
c = 65.0
d = 'Turku'
f2 = open(r'myInfo.txt', 'w')
f2.write(a+' '+str(b)+' '+str(c)+' '+d)
myInfo(r'myInfo.txt')
