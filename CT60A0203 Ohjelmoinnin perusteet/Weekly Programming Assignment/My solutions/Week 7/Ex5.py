def sortFileContents(txt):
    with open(txt, 'r') as f:
        lst = f.readlines()
    for i in range(len(lst)):
        lst[i] = int(lst[i])
    lst.sort()
    with open(r'sortedScores.txt', 'w') as f2:
        for j in range(len(lst)):
            f2.write(str(lst[j])+'\n')
    print(lst)


sortFileContents(r'Scores.txt')
