from operator import itemgetter
with open('houseLahti.txt', 'r') as f:
    content = f.readlines()
    data = []
    final = []
    for i in range(len(content)):
        house = content[i].split(',')
        house = [x.replace('\n', "") for x in house]
        house[2] = float(house[2])
        data.append(house)
    data2 = sorted(data, key=itemgetter(2), reverse=True)
    for j in data2:
        j[2] = str(j[2])
        j = ','.join(j)
        final.append(j)
with open('salehouseLahti.txt', 'w') as f1:
    for k in final:
        f1.write(str(k)+'\n')
with open('salehouseLahti.txt', 'r') as f2:
    homelists = f2.readlines()
    for h in range(len(homelists)):
        pick = homelists[h].split(',')
        pick = [y.replace('\n', "") for y in pick]
        pick = ','.join(pick)
        print(pick)
