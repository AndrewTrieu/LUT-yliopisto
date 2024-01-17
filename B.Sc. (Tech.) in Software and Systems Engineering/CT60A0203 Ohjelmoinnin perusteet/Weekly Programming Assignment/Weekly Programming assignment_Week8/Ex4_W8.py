#GCD and LCM algorithms from assignment 6

def GCD(a,b):  # 3, 5
   #first, figure out which is bigger
    if a<b:
        smaller=a
        bigger=b
    else:
        smaller=b
        bigger=a
        
    #use Euclid's algorithm
    #loop until the numbers divide each other
    while(bigger % smaller !=0): # reminder of the division 2 
       remainder = bigger%smaller
       bigger=smaller
       smaller=remainder                      

    return smaller

def LCM(a,b):
    return int((a*b)/GCD(a,b)) # lcm 



# This weeks solution starts here:
results={} 
askMore=True
while askMore: # to repeat input process until user enter 0 to terminate 
    A=int(input("Give A:"))  #3  
    B=int(input("Give B:"))  #5 

    if A==0 or B==0:
        askMore=False
    else:
        if (A,B) in results:
            print("LCM of", A ,"and", B ,"is ", results[(A,B)])
        elif (B,A) in results:
            print("LCM of", A ,"and", B ,"is ", results[(B,A)])
        else:
            lcm = LCM(A,B)
            results[(A,B)]=lcm # stores in the dictionary
            print("LCM of", A ,"and", B ,"is ", results[(A,B)])
print (results)
