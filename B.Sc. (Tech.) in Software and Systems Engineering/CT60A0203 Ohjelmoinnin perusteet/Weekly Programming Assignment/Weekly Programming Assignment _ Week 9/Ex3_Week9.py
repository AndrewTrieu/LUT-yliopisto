def checkAgeEntry(filename):
    f1 = open(filename)
    for age in f1:
        try:
           a = age.strip().split(":")
           y = int(a[1])
         
        except ValueError:
            print ("age entry is not correct",a[0],a[1])

        else:
            print ("age entry is correct",a[0],a[1])
#main program
checkAgeEntry("person.txt")    