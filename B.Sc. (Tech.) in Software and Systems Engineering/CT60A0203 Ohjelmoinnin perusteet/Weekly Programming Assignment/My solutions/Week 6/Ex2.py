def finalGrade(txt):
    with open(txt, 'r') as f:
        lst = f.readlines()
    total = len(lst)
    for i in range(0, total):
        lst[i] = int(lst[i])
    quantity = []
    for j in range(0, 6):
        n = lst.count(j)
        quantity.insert(j, n)
        print('Grade ' + str(j) + ': ', quantity[j])
    print('Pass %: ', ((quantity[1] + quantity[2] +
          quantity[3] + quantity[4] + quantity[5])/total)*100)


finalGrade(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\finalGrades.txt')
