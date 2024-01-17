def numbers_Between(list1, x, y):
    new_list = []
    for i in range(len(list1)):
        if i > x and i < y:
            new_list.append(i)
    return new_list

#main program
a = [4,2,5,3,6,4,7,5]
b = numbers_Between(a,3,7)
print(b)