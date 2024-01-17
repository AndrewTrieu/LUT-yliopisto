List1 = [12, "abc", 45.90, "1a", -34, "###"]
List2 = []
for i in List1:
    if isinstance(i, int) == True or isinstance(i, float) == True:
        List2.append(i)
        List1.remove(i)
print('Values in List1:', List1)
print('Values in List2:', List2)
