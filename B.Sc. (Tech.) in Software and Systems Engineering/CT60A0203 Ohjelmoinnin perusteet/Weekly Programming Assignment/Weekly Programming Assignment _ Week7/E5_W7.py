def sortFileContents(filename):
    f1 = open(filename)
    l1 = []
    for i in f1:
        l1.append(int(i))
    
    l1.sort()
    f2 = open("sortedScores.txt","w")
    
    for i in l1:
        f2.write(str(i)+"\n")
    print(l1)

#main program
sortFileContents("Scores.txt")
    
