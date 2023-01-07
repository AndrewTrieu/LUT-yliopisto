import numpy as np
b = np.loadtxt('marks.txt', delimiter=",",dtype=int)
highindices = (b.argmax(axis=1))
highest = (b.max(axis=1))
lowest = (b.max(axis=1))
j = 0
for i in highindices:
    print("student",j+1,":","Quiz",i+1,":",highest[j])
    j= j+1

count = np.count_nonzero(b <50, axis=0)
print("Number of students failed in Quiz 5:",count[4])