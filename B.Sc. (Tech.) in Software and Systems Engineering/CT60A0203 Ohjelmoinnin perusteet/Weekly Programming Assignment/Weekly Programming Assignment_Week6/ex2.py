def finalGrade(x):
    zero,one,two,three,four,five = 0,0,0,0,0,0
    f1 = open(x)
    for i in f1:
        if int(i) == 0:
            zero = zero+1
        elif int(i) == 1:
            one = one+1
        elif int(i) == 2:
            two = two+1
        elif int(i) == 3:
            three = three+1
        elif int(i) == 4:
            four = four+1
        else:
            five = five+1
    f1.close()        
    print("Grade 0:",zero)
    print("Grade 1:",one)
    print("Grade 2:",two)
    print("Grade 3:",three)
    print("Grade 4:",four)
    print("Grade 5:",five)
    return ((one+two+three+four+five)/(zero+one+two+three+four+five)) *100
    
#mainprogram
print("Pass %:",finalGrade("finalGrades.txt"))
