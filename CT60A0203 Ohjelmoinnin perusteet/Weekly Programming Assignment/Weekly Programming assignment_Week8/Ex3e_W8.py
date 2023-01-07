f1 = open("person.txt")
personDict = {}
#transferring data from file to dictionary
for person in f1:
    p = person.split(":")
    personDict.update({p[0]:int(p[1].strip())})
#line 6--> name as key and age as value
#sorting done by x[0] that is key
list1 = sorted(personDict.items(), key=lambda x: x[1])
print(list1)

f2 = open("personsorted2.txt","w")
for line in list1:
    f2.write(str(line[0]+","+str(line[1])+"\n"))
    
f1.close()
f2.close()


      

 
