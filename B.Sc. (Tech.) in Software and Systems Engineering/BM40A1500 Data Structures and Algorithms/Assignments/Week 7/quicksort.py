def qsort(A, i, j):
    if i >= j:
        return
    p = partition(A, i, j)
    qsort(A, i, p-1)
    qsort(A, p+1, j)


def partition(A, i, j):
    pivot = A[j]
    p = i
    for q in range(i, j):
        if A[q] < pivot:
            A[p], A[q] = A[q], A[p]
            p += 1
    A[p], A[j] = A[j], A[p]
    return p


if __name__ == "__main__":
    A = [9, 7, 1, 8, 5, 3, 6, 2, 4]
    print(A)    # [9, 7, 1, 8, 5, 3, 6, 2, 4]
    qsort(A, 0, len(A)-1)
    print(A)    # [1, 2, 3, 4, 5, 6, 7, 8, 9]
