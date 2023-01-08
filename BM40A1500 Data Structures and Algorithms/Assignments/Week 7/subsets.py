def subsets(a: int) -> list:
    s = [i for i in range(1, a+1)]
    return [x for x in get_sets(s) if x]


def get_sets(s):
    size = 2**len(s)
    for cnt in range(0, size):
        final = []
        for i in range(0, len(s)):
            if ((cnt & (1 << i)) > 0):
                final.append(s[i])
        yield final


if __name__ == "__main__":
    print(subsets(3))   # [[1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

    print(subsets(4))   # [[1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3],
    #  [4], [1, 4], [2, 4], [1, 2, 4], [3, 4], [1, 3, 4],
    #  [2, 3, 4], [1, 2, 3, 4]]

    S = subsets(10)
    print(S[95])    # [6, 7]
    print(S[254])   # [1, 2, 3, 4, 5, 6, 7, 8]
    print(S[826])   # [1, 2, 4, 5, 6, 9, 10]
