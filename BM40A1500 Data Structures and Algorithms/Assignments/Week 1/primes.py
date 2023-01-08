def primes(N):
    a = 0
    for num in range(2, N+1):
        if all(num % i != 0 for i in range(2, num)):
            a += 1
    return a


if __name__ == "__main__":
    print(primes(7))    # 4
    print(primes(15))   # 6
    print(primes(50))   # 15
