def ListToSet(a):
    final = set(a)
    final = list(final)
    final.sort()
    print(final)


def inputList():
    time = int(input('Enter number of elements:'))
    i = 0
    lst = []
    while i < time:
        addval = input('Enter value for list:')
        lst.append(addval)
        i += 1
    ListToSet(lst)


inputList()
