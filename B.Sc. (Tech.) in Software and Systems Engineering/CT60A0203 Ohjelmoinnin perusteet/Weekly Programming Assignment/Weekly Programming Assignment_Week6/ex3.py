def loanDue_Complete(x):
    f1 = open(x)
    f2 = open("noDue.txt","w") #write into a new file
    f3 = open("Due.txt","w") #write into a new file
    
    for customer in f1: # loop to read data -> end of file
        c = customer.split(",") #split data separated by comma
        balance = 0
        balance = float(c[3])-float(c[2])
        if balance>=0: #the index of grade in a row is 2
            f2.write(c[0]+","+c[1]+","+c[2]+","+c[3].strip()+","+str(abs(balance))+","+"No due\n")
        else:
            f3.write(c[0]+","+c[1]+","+c[2]+","+c[3].strip()+","+str(balance)+","+"Due\n")
            #strip cut the "\n"
     
    f1.close()
    f2.close()
    f3.close()
    f4 = open("noDue.txt")
    print("No due Customers list ")
    print(f4.read())

def loanDue(y): 
    f1 = open(y) # read data
    print("Customors that paid 60% of loan amount or more")
    for customer in f1: # loop to read data -> end of file
        c = customer.split(",") #split data separated by comma
        spercent = float(c[2])*0.6
        if float(c[3])>=spercent: #the index of grade in a row is 2
            print(c[0]+","+c[1]+","+c[2]+","+c[3]+","+c[4]+","+c[5].strip())
        else:
            continue
#main program
loanDue_Complete("loanCustomer.txt")
loanDue("Due.txt")  