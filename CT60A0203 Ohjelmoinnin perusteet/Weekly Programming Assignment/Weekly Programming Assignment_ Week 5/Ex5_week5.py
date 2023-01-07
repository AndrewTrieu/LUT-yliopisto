def anagramAB(a,b):
    permutation = True # assume it is true

    if len(A) != len(B):
        permutation = False
    else:
        for letter in A:
            if B.count(letter) != A.count(letter):
                permutation = False
                break #if a single non-match is found, checking can be stopped.

    if permutation:
        print(B,"is a permutation of", A)
    else:
        print(B,"is not a permutation of",A)

        
#main program
A = input ("Enter string A :")
B = input ("Enter string B :")
anagramAB(A,B)

       
    
     


    





