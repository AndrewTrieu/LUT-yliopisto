lst = []


def flt():
    try:
        a = float(input('Enter a float value:'))
        if a == 0:
            lst.sort()
            for i in lst:
                print(i)
        elif a < 0 or a.is_integer():
            raise Exception
        elif a != 0:
            lst.append(a)
            flt()
    except:
        print('Give only positive float numbers')
        flt()


flt()
