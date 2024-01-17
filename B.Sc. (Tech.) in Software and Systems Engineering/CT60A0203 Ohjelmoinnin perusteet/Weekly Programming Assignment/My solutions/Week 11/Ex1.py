def LinearSearchNumber():
    list1 = [12, 34, 78, 11, 90, 45, 12.4, 34.10, 78.3, 11.5, 90.12, 45.6]
    try:
        num = float(input('Enter a search value:'))
    except Exception:
        print('Search value must be int or float')
    else:
        for i in list1:
            if num == i:
                print('It exists:', list1.index(i))
                return
        else:
            print("It does not exist")


LinearSearchNumber()
