def checkFileType(txt):
    try:
        with open(txt, 'r') as f:
            content = f.readlines()
            for i in content:
                i = i.strip('\n')
                print(i)
    except FileNotFoundError as err:
        print(err)
    finally:
        print('The program ends')


checkFileType('person.txt')
checkFileType('person1.txt')
