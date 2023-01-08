def pairs(s):
    result = 0
    loc = [x for x in range(len(s)) if s[x] == "1"]
    for i in range(len(loc)):
        result += loc[i]*(i) - loc[i]*(len(loc)-i-1)
    return result


if __name__ == "__main__":
    print(pairs("100101"))  # 10
    print(pairs("101"))  # 2
    print(pairs("100100111001"))  # 71
    print(pairs("0011110001110011010111"))
