# Number n is the input
n = 40

# Compute the value f(n) and store it to variable f
f = n**2 + n + 41   

# Print the value f(n)
print("f(", n, ") = ", f)

flag = False        # flag is True if we find a number dividing f
        
i = 2
while i < f:

    if (f % i) == 0:    # test whether i divides f 
        flag = True     # we found one, so f cannot be prime
        print(i, "divides", f)  # print the number i
        i = f           # we will exit the loop        

    i = i + 1           # we increase i by 1 for the next round


# finally, we output result        
if flag:
    print(f, "is not a prime number")
else:
    print(f, "is a prime number")
