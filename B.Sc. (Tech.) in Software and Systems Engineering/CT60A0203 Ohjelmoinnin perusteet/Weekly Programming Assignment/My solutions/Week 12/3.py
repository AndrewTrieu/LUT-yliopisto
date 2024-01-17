class ageError(Exception):
    pass


class heightError(Exception):
    pass


lst = []
choice = True
while choice:
    name = input('Your name:')
    try:
        height = float(input('Your height:'))
        if height < 168:
            raise heightError
    except heightError:
        print('Height must be at least 168.00:'+str(height))
        continue
    except Exception as e:
        print(e)
        continue
    try:
        age = int(input('Your age:'))
        if age > 25 or age < 18:
            raise ageError
    except ageError:
        print('Age must be between 18 and 25:'+str(age))
        continue
    except Exception as e:
        print(e)
        continue
    else:
        lst.append(name + ',' + str(height) + ',' + str(age))
        with open('candidate.txt', 'a') as f:
            f.write(name + ',' + str(height) + ',' + str(age)+'\n')
        h = input('do you want to continue y or n:')
        if h == 'y':
            continue
        elif h == 'n':
            choice = False
            for i in lst:
                print(i)
        else:
            print('Invalid choice.')
