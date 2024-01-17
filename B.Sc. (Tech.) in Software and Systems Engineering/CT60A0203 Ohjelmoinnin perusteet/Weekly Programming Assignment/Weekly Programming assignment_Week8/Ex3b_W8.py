f1 = open("City.txt")
cityDict = {}

for city in f1:
    c = city.split(":")
    #print(h)
    cityDict.update({c[0]:c[1].strip()})

list1 = list(sorted(cityDict.items()))
print(list1)

f2 = open("Citysorted.txt","w")
for line in list1:
    print(line[0])
    f2.write(str(line[0]+","+line[1]+"\n"))
    
f1.close()
f2.close()


      

 
