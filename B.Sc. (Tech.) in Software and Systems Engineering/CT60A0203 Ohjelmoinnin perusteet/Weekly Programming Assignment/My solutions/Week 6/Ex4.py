def readKeys(txt, txt2):
    with open(txt, 'r') as f:
        lst = f.readlines()
        for i in range(len(lst)):
            a = lst[i].split(',')
            a = [x.split('\n')[0] for x in a]
    with open(txt2, 'r') as f2:
        lst2 = f2.readlines()
        for j in range(len(lst2)):
            point = 0
            b = lst2[j].split(',')
            b = [y.split('\n')[0] for y in b]
            for k in range(len(b)):
                if b[k] == a[k]:
                    point += 10
            print(point)


readKeys(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\keyAnswers.txt',
         r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\studentAnswers.txt')
