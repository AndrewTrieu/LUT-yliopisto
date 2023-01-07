def checkAgeEntry(txt):
    with open(txt, 'r') as f:
        content = f.readlines()
        for i in content:
            i = i.strip('\n')
            i = i.split(':')
            try:
                i[1] = int(i[1])
                print('age entry is correct '+i[0]+' '+str(i[1]))
            except ValueError:
                print('age entry is not correct '+i[0]+' '+str(i[1]))


checkAgeEntry('person.txt')
