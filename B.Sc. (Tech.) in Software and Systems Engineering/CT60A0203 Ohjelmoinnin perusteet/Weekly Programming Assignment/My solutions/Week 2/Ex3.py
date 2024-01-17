n = int(input("Enter a number between 100 and 999:"))
sum = 0
sum = sum + (n % 10)
n = n // 10
sum = sum + (n % 10)
n = n // 10
sum = sum + n
print(sum)
