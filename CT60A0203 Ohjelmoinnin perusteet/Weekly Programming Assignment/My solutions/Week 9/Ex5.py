import matplotlib.pyplot as plt
dct = {}


def info():
    while len(dct) <= 4:
        name = input('Name: ')
        try:
            score = float(input('Score: '))
            dct[name] = score
        except Exception:
            print('Please enter a number.')
            info()
            return
    namel = list(dct.keys())
    scorel = list(dct.values())
    plt.xticks(range(len(scorel)), namel)
    plt.title('People and their scores')
    plt.bar(range(len(scorel)), scorel)
    plt.show()


info()
