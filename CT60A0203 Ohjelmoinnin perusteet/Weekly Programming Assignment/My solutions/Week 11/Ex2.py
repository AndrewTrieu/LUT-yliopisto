def binsearchList(l1, value):
    low = 0
    high = len(l1)-1
    while low <= high:
        mid = int((low + high) / 2)
        if l1[mid] == value:
            return mid+1
        else:
            if value <= l1[mid]:
                high = mid - 1
            elif value >= l1[mid]:
                low = mid + 1
    else:
        return 'not exists'


list1 = [12, 34, 23, 89, 20]
print(binsearchList(list1, 89))
print(binsearchList(list1, 189))
