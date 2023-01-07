def removeDuplicates(a):
    i = 0
    while i < len(a):
        j = 0
        while j < len(a):
            if a.count(a[i]) != 1:
                a.pop(i)
            j += 1
        i += 1
    a.sort()


list1 = [1, 2, 1, 3, 3, 2, -1, 5, 3, 5, -1, 2, 5]
removeDuplicates(list1)
print(list1)
