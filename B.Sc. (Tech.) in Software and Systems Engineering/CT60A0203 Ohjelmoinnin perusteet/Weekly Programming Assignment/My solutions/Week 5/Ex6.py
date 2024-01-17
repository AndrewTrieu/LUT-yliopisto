# Read the file


def read_file(txt):
    score = open(txt, 'r')
    content = score.readlines()
    return content

# Write to file


def write_file(txt2a, txt2b):
    scribe = open(
        r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 5\score1.txt', 'w')
    scribe.write(str(txt2a)+' ')
    scribe.write(str(txt2b))
    scribe.close()

# Combined functions


def find_largest(txt3):
    lst = read_file(txt3)
    for i in range(0, len(lst)):
        lst[i] = int(lst[i])
    largest = lst[0]
    for j in lst:
        if j > largest:
            largest = float(j)
    smallest = lst[0]
    for k in lst:
        if k < smallest:
            smallest = float(k)
    write_file(largest, smallest)


find_largest(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 5\score.txt')
