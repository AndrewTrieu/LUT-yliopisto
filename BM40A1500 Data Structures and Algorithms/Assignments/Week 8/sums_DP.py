def sums(arr):
    # Create a set to store all the unique sums
    sums = set()

    # Initialize a list with length equal to the length of arr
    # to store the previous results
    prev_results = [0] * len(arr)

    # Iterate through each element in arr
    for i in range(len(arr)):
        # Initialize a temporary set to store the new sums
        temp = set()
        # Iterate through all the previous results
        for j in range(i):
            # Add the current element to each of the previous sums
            # and add the new sum to the set
            temp.add(arr[i] + prev_results[j])
        # Add the current element to the set
        temp.add(arr[i])
        # Update the list of previous results with the new sums
        prev_results[i] = temp
        # Update the set of all sums with the new sums
        sums = sums.union(temp)
    return len(sums)


# Test
if __name__ == "__main__":
    print(sums([1, 2, 3]))                  # 6
    print(sums([2, 2, 3]))                  # 5
    print(sums([1, 3, 5, 1, 3, 5]))         # 18
    print(sums([1, 15, 5, 23, 100, 55, 2]))  # 121
