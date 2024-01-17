def changes(A):
    count = 0
    i = 0
    while i < len(A):
        if i == len(A)-1:
            break
        else:
            if A[i+1] == A[i]:
                count += 1
                i += 2
            else:
                i += 1
    return count


if __name__ == "__main__":
    print(changes([1, 2, 5, 5, 4, 2]))
