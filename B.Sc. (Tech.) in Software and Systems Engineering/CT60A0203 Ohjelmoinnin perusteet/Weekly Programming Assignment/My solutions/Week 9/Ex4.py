class salary(Exception):
    pass


class age(Exception):
    pass


lst = []


def info():
    name = input('Your name:')
    try:
        income = float(input('Your salary:'))
        if income < 1500 or income > 2500:
            raise salary
    except salary:
        print('Salary must be between 1500 and 2500:'+str(income))
        info()
        return
    except Exception as a:
        print(a)
        info()
        return
    try:
        aged = int(input('Your age:'))
        if aged < 25:
            raise age
    except age:
        print('age must be 25 or more:'+str(aged))
        info()
        return
    except Exception as b:
        print(b)
        info()
        return
    else:
        hold = [name, str(income), str(aged)]
        last = ','.join(hold)
        lst.append(last)
        choice = input('do you want to continue y or n:')
        if choice == 'y':
            info()
        elif choice == 'n':
            for i in lst:
                print(i)
        else:
            print('Invalid choice')


info()
