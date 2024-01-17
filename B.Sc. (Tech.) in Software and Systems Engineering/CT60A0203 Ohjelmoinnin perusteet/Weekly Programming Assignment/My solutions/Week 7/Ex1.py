a = int(input('Enter an integer number:'))
lst = []
while a != -1:
    lst.append(a)
    a = int(input('Enter an integer number:'))
lst.sort(reverse=True)
print(lst)
