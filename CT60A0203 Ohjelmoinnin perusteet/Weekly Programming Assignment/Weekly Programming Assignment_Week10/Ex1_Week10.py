import numpy as np
array1 = np.array([])
while True:
    try:
        x = input("Enter an int value:")
        if x=="0":
            break
        if int(x)<0 or float(x)==True: 
            raise ValueError
        
    except ValueError:
        print("Give only positive int numbers")
    
    else:
        array1= np.append(array1, int(x))
        
print("Lowest:",np.amin(array1))
print("Highest:",np.amax(array1))
print("Average:",np.average(array1))

    