def PoundsToKgs(n):
    a = float(n)/2.205
    return a


w = float(input('What is your weight in pounds? '))
k = PoundsToKgs(w)
print('Your weight in kg: ', round(k))
