def sortData(file, choice):
    lst = []
    with open(file, 'r') as f:
        contents = f.readlines()
        for i in contents:
            if isinstance(i, int) or isinstance(i, float):
                i = float(i)
                i = "{:.2f}".format(i)
                lst.append(i)
            elif isinstance(i, str):
                i = i.strip('\n')
                lst.append(i)
        if choice == 1:
            lst.sort()
            for j in lst:
                print(j)
        elif choice == 2:
            lst.sort(reverse=True)
            for k in lst:
                print(k)


def perfectNumber(n):
    if n == 0:
        return False
    elif n < 0:
        n = abs(n)
    sum = 0
    for x in range(1, n):
        if n % x == 0:
            sum += x
    return sum == n
