import numpy as np
import matplotlib.pyplot as mp
def cityPopulationChart(filename):
    f1 = open(filename)
    cpc = {}
    for city in f1:
        c = city.split(",")
        #print(c)
        cpc.update({c[0]:int(c[1].strip())})
        
    xpoints = cpc.keys()
    ypoints = cpc.values()
    mp.plot(xpoints,ypoints) 
    mp.xlabel("years")
    mp.ylabel("Population")
    mp.show()      
    f1.close()
#main program
cityPopulationChart("citypopulation.txt")


        