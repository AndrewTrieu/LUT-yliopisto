def rot13(string):
    decode=""
    for i in range(0,len(string)):
        if ord(string[i])<=109:
            decode+=(chr(ord(string[i])+13))
        else:
            decode+=(chr(ord(string[i])-13))
    return decode

#main program
s = input("Enter the string to encrypt:")
print(rot13(s))
      
   
#chr() returns the character of the ASCII
#ord() returns the ASCII