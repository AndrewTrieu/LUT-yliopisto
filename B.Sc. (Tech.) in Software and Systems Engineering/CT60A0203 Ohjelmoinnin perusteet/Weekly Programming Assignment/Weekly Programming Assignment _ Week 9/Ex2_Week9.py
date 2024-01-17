def checkFileType(filename):
    try:
        f1 =open(filename)
    
    except FileNotFoundError as fe:
         print(fe)
         
    else:
        for person in f1:
            print(person.strip())
    finally:
        print("The program ends")
#main program
checkFileType("person.txt")
checkFileType("person1.txt")

        