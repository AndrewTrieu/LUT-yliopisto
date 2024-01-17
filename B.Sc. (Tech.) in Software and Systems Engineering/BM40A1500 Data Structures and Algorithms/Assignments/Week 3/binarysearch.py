def search(A: list, item: int):
    low = 0
    high = len(A) - 1
    mid = 0
    while low <= high:
        mid = (high + low) // 2
        if A[mid] < item:
            low = mid + 1
        elif A[mid] > item:
            high = mid - 1
        else:
            return mid
    return -1


if __name__ == "__main__":
    A = [1, 2, 3, 6, 10, 15, 22, 27, 30, 31]
    print(search(A, 6))     # 3
    print(search(A, 7))     # -1
    print(search(A, 30))    # 8
