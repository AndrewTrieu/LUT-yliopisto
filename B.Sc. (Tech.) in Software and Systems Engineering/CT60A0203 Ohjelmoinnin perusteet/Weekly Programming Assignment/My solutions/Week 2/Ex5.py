wbs = input("Enter the WBS types:")
if (not wbs):
    print("No input or empty string.")
elif wbs.isupper() == False:
    print("Input is not in uppercase.")
else:
    n = wbs.count("N")
    l = wbs.count("L")
    m = wbs.count("M")
    total = n+l+m
    print("Proportion of N: ", round((n/total)*100), "percent")
    print("Proportion of L: ", round((l/total)*100), "percent")
    print("Proportion of M: ", round((m/total)*100), "percent")
