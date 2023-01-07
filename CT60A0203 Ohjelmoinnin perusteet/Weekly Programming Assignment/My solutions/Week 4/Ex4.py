rows = 6
for x in range(0, rows + 1):
    for y in range(rows - x, 0, -1):
        print(y, end=' ')
    print("\n")
