import matplotlib.pyplot as plt
dicAreas = {'Russia': 1707, 'Canada': 997,
            'China': 960, 'American': 936, 'Brazil': 855}


def sortDict(a):
    lst = []
    values = a.values()

    sortedkeys = sorted(values)
    sorted_keys = {}

    for i in sortedkeys:
        for k in dicAreas.keys():
            if dicAreas[k] == i:
                sorted_keys[k] = dicAreas[k]
                break
    for i in range(len(sortedkeys)):
        lst.append(0)
    lst[0] = 0.1
    lst[-1] = 0.1
    myexplode = lst
    xnames = sorted_keys.keys()
    ypoints = sorted_keys.values()
    plt.title('Top 5 largest countries by area size',
              bbox={'facecolor': '0.8', 'pad': 5})
    plt.pie(ypoints, labels=xnames, explode=myexplode, autopct='%1.0f%%')
    plt.show()


sortDict(dicAreas)
