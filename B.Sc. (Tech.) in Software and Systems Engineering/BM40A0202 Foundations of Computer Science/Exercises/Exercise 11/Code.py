def SubsetsSum(arr, n, v, sum):
    if (sum == 0):
        for value in v:
            print(value, end=" ")
        print()
        return
    if (n == 0):
        return
    SubsetsSum(arr, n - 1, v, sum)
    v1 = [] + v
    v1.append(arr[n - 1])
    SubsetsSum(arr, n - 1, v1, sum - arr[n - 1])


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
sum = 28
SubsetsSum(arr, len(arr), [], sum)
