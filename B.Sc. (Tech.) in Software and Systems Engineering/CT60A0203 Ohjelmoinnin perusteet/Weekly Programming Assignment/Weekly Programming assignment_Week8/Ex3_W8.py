def sortValue(line):
    line_fields = line.strip().split(',')
    price = float(line_fields[2])
    return price

f1 = open("houseLahti.txt")
contents = f1.readlines()

# sorting using our custom logic
contents.sort(key=sortValue)
f1.close()
#writing into new file
f2 = open("salehouseLahti.txt","w")
for line in contents:
    f2.write(line)


f2.close()

      

 
