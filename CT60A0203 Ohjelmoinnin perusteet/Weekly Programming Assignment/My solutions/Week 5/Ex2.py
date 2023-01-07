def isPrime(num):
    if num >= 2:
        for i in range(2, int((num/2)+1)):
            if (num % i) == 0:
                print(num, "is not a prime number")
                break
        else:
            print(num, "is a prime number")
    else:
        print(num, "is not a prime number")


x = int(input('Enter an integer: '))
isPrime(x)
