List1 = [12,"abc",45.90,"1a",-34,"###"]
List2 = []
for i in List1:
    if i!=str:
        List2.append(i)
        List1.remove(i)

print("Values in List1:",List1)
print("values in List2:",List2)

