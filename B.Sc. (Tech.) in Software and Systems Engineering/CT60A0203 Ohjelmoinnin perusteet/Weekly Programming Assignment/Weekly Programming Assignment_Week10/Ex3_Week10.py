import numpy as np
import matplotlib.pyplot as mp

def sortDict(dict1):
    sorted_values = sorted(dict1.values()) # Sort the values
    sorted_dict = {}

    for i in sorted_values:
        for k in dict1.keys():
            if dict1[k] == i:
                sorted_dict[k] = dict1[k]
                break
    return sorted_dict

dicAreas={'Russia':1707,'Canada':997,'China':960,'American':936,'Brazil':855}
dicAreas = sortDict(dicAreas)
print("The sorted dictionary is: ",dicAreas)
country = list(dicAreas.keys())
area = list(dicAreas.values())
myexplode = [0.1, 0, 0, 0, 0.1] #splitting from pie
mycolors = ["green", "hotpink", "b", "#4CAF50","red"]
mp.pie(area, labels = country, explode = myexplode,autopct="%.0f%%")
mp.title("Top 5 largest countries by area size", bbox={'facecolor':'0.8', 'pad':5})
#mp.legend() #adding legends
mp.show()


