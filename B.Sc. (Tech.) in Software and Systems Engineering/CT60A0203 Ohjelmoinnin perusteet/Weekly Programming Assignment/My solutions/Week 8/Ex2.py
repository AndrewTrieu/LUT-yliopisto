def yourCityPopulation(file):
    name = input('Enter the city name:')
    try:
        with open(file, 'r') as f:
            data = {}
            content = f.readlines()
            for i in range(len(content)):
                city = content[i].split(':')
                city = [x.replace('\n', "") for x in city]
                data[city[0]] = city[1]
        print(name+' '+data[name])
    except KeyError:
        print('City not exists')


yourCityPopulation('City.txt')
