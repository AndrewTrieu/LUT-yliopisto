def menu():
    print("\nChoose your options: ")
    print(" 1.Replace second string\n", "2.Exciting summer job\n", "3.Exit\n")
    choice = int(input("Select your options from 1 - 3: "))
    if choice == 1:
        txt1 = input("Give the first string: ")
        txt2 = input("Give the string to replace in first string: ")
        print("Replaced string:", txt1.replace(txt2, '"'+txt2+'"'))
        menu()
    elif choice == 2:
        hours = int(input("Hours worked for 5 weeks: "))
        pay = 15.50*hours
        net = pay*0.86
        wear = net*0.1
        school = net*0.01
        after = net - wear - school
        bonds = float(
            input("Spent money on buying saving bonds in € (if doesn’t - enter 0): "))
        print("Income before tax:", pay)
        print("Income after tax:", net)
        print("Money spent on clothes and accessories:", wear)
        print("Money spent on school supplies:", school)
        print("Money saved after tax and other expenses:", round(after, 2))
        print("Money spent on savings bonds:", bonds)
        parents = 0.00
        if bonds <= (0.25*net):
            parents = ((bonds//1)*0.25)+(0.01*after)
        elif bonds == (0.25*net):
            parents = 5.00
        elif bonds >= (0.25*net):
            parents = ((bonds//1)*0.4)+(0.02*after)
        else:
            parents = 0.01*after
        print("Money spent by parents to buy additional savings bonds:",
              round(parents, 2))
        menu()
    elif choice == 3:
        print("\nBye from Menu- See you again")
    else:
        print("\nInvalid choice- I give up")
        menu()


menu()
