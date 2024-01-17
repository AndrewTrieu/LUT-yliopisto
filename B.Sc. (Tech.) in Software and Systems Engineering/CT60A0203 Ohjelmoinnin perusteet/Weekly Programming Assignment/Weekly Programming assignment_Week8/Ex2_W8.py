def yourCityPopulation(filename):
    f1 = open(filename)
    city = dict()
    
    for cp in f1:
        x = cp.split(":")
        city.update({x[0]:x[1].strip()})
    f1.close()
    
    c = input("Enter the city name:")
    n = 0
    for key, value in city.items():
        if c == key:
            print(key,value)
            n = 0
            break
        else:
            n=1
    if n!=0:
        print("City not exists")
    
#Main program
yourCityPopulation("City.txt")
 

