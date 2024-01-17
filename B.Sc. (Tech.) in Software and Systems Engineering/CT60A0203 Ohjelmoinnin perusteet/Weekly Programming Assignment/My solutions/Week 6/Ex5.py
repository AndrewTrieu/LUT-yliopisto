def numbers_Between(list1, x, y):
    final = []
    for i in range(len(list1)):
        if i > x and i < y:
            final.append(i)
    final.sort()
    return final


a = [4, 2, 5, 3, 6, 4, 7, 5]
b = numbers_Between(a, 3, 7)
print(b)
