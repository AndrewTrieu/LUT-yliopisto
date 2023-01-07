def isPrime(n):
    p = 1
    for i in range(2,n):
        if n%i == 0:
            p = 0
            break
    return p

#main program
n=int(input("Enter an integer(>=2):"))
p = (isPrime(n))
if p==1:
    print("It is prime number")
else:
    print("It is not a prime number")