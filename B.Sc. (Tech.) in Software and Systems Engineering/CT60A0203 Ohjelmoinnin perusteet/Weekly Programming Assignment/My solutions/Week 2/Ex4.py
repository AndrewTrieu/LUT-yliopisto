t = float(input("Enter temperature in Fahrenheit:"))
w = float(input("Enter wind speed miles per hour:"))
print("The wind chill index is:", 35.74 +
      (0.6215*t)-35.74*(w**0.16)+0.4275*t*(w**0.16))
