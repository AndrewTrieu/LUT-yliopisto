def split(T):
    count = 0
    max_from_left = T[0]
    min_to_right = T[-1]

    for i in range(1, len(T)):
        max_from_left = max(max_from_left, T[i])

    for i in range(len(T) - 2, -1, -1):
        min_to_right = min(min_to_right, T[i])

    for i in range(len(T) - 1):
        if max_from_left < min_to_right:
            count += 1
        max_from_left = max(max_from_left, T[i])
        min_to_right = min(min_to_right, T[i+1])

    return count


if __name__ == "__main__":
    print(split([1, 2, 3, 4, 5]))  # 4
    print(split([5, 4, 3, 2, 1]))  # 0
    print(split([2, 1, 2, 5, 7, 6, 9]))  # 3
    print(split([1, 2, 3, 1]))  # 0
