t = int(input('Number of time the input to be asked: '))
zero = 0
cntpos = 0
cntneg = 0
while (0 < t):
    x = int(input('Enter any integer as input: '))
    if x == 0:
        zero += 1
    elif x > 0:
        cntpos += 1
    else:
        cntneg += 1
    t -= 1
print("Positive:", cntpos)
print("Negative:", cntneg)
print("Zero:", zero)
