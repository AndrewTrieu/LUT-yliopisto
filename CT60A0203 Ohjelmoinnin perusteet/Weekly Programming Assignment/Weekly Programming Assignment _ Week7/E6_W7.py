def removeDuplicates(n):
    for i in range(len(n)-1):
        for j in range(i+1,len(n)):
            if j >=(len(n)):
                break
            if n[i] == n[j]:
                n.pop(j)
    n.sort()
    
#main program
list1 = [1, 2, 1, 3, 3, 2, -1, 5, 3, 5, -1, 2, 5]
removeDuplicates(list1)
print(list1)