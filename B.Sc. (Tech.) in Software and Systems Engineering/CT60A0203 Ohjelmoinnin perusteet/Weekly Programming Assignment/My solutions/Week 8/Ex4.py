database = {}


def lcm(m, n):
    if m > n:
        greater = m
    else:
        greater = n
    while(True):
        if((greater % m == 0) and (greater % n == 0)):
            lcm = greater
            break
    return lcm


def lcm_calc(x, y):
    try:
        val = database[(x, y)]
        return val
    except:
        try:
            val = database[(y, x)]
            return val
        except:
            val = lcm(x, y)
            database[(x, y)] = val
            database[(y, x)] = val
            return val


def program():
    a = int(input('Give A:'))
    b = int(input('Give B:'))
    if a == 0 or b == 0:
        return
    print('LCM of '+str(a)+' and '+str(b)+' is '+str(lcm_calc(a, b)))

    program()


program()
