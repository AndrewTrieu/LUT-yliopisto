cnt = 0
for i in range(1900, 2021):
    if i % 100 == 0:
        if i % 400 == 0:
            print(i)
            cnt += 1
    elif i % 4 == 0:
        print(i)
        cnt += 1
print("Total number of leap years from 1900 to 2021: ", cnt)
