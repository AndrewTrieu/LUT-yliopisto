import matplotlib.pyplot as plt
lst1 = []
lst2 = []


def cityPopulationChart(txt):
    dct = {}
    with open(txt, 'r') as f:
        con = f.readlines()
        for i in con:
            i = i.split(',')
            i = [x.replace('\n', '') for x in i]
            lst1.append(i[0])
            lst2.append(int(i[1]))
            #dct[i[0]] = int(i[1])
    years = lst1
    pop = lst2
    plt.plot(years, pop)
    plt.xlabel('Years')
    plt.ylabel('Population')
    plt.show()


cityPopulationChart('citypopulation.txt')
