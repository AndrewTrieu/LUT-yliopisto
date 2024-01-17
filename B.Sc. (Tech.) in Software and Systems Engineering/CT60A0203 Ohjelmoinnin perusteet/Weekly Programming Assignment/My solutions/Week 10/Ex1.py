import numpy as np
arr = []


def flt():
    while True:
        try:
            a = int(input('Enter an int value:'))
            if a == 0:
                narr = np.array(arr)
                print('Lowest:', float(np.amin(narr)))
                print('Highest:', float(np.amax(narr)))
                print('Average:', float(np.average(narr)))
                break
            elif a < 0:
                raise ValueError
            elif a != 0:
                arr.append(a)
        except ValueError:
            print('Give only positive int numbers')


flt()
