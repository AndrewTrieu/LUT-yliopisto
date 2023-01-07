def InsertionSortTuple(tup):
    lst = list(tup)
    for step in range(1, len(lst)):
        key = lst[step]
        j = step - 1
        while j >= 0 and key < lst[j]:
            lst[j + 1] = lst[j]
            j = j - 1
        lst[j + 1] = key
    lst.reverse()
    ans = tuple(lst)
    print(ans)
