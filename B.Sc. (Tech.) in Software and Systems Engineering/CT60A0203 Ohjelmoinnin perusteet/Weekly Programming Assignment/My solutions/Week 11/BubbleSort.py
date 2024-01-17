def BubbleSort(lst, order):
    lit = list(lst)
    for i in range(len(lit)):
        for j in range(0, len(lit) - i - 1):
            if lit[j] > lit[j + 1]:
                lit[j], lit[j + 1] = lit[j+1], lit[j]
    if type(lst) == tuple:
        lit = tuple(lit)
    if order == 1:
        return lit
    elif order == 2:
        lit.reverse()
        return lit
