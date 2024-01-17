f1 = open("houseLahti.txt")
houseDict = {}

for house in f1:
    h = house.split(",")
    #print(h)
    houseDict.update({float(h[2]):h[0]+","+h[1]+","+h[3]})

list1 = list(sorted(houseDict.items(),reverse=True))

f2 = open("salehouseLahti1.txt","w")
for line in list1:
    l = line[1].split(",")
    f2.write(l[0]+","+l[1]+","+str(line[0])+","+l[2])
    
f1.close()
f2.close()
f3 = open("salehouseLahti1.txt")

for sale in f3:
    print(sale.strip())
f3.close()


      

 
