def sums(arr):
    sums = set()
    for i in range(len(arr)):
        for j in range(i, len(arr)):
            for k in range(j, len(arr)):
                sums.add(arr[i] + arr[j] + arr[k])
    return len(sums)


# Test
if __name__ == "__main__":
    print(sums([1, 2, 3]))                  # 6
    print(sums([2, 2, 3]))                  # 5
    print(sums([1, 3, 5, 1, 3, 5]))         # 18
    print(sums([1, 15, 5, 23, 100, 55, 2]))  # 121
