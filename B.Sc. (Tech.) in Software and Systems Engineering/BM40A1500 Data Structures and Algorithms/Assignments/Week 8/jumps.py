def jumps(n, a, b):
    if n < 0:
        return 0
    if n == 0:
        return 1

    # Initialize an array to store the number of ways to reach each position
    num_ways = [0] * (n + 1)
    num_ways[0] = 1

    # Calculate the number of ways to reach each position
    for i in range(n + 1):
        num_ways[i] += num_ways[i - a]
        num_ways[i] += num_ways[i - b]

    return num_ways[n]


if __name__ == "__main__":
    print(jumps(4, 1, 2))  # 5
    print(jumps(8, 2, 3))  # 4
    print(jumps(11, 6, 7))  # 0
    print(jumps(30, 3, 5))  # 58
    print(jumps(100, 4, 5))  # 1167937
