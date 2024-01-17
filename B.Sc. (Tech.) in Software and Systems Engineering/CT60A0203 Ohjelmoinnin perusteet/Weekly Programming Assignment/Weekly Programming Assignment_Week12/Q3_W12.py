class heightNotinRangeError(Exception):
    def __init__(self, arg): 
        self.msg = arg     

class ageNotinRangeError(Exception):
    def __init__(self, arg): 
        self.msg = arg     

def age_check(s):
  if s<18 or s>25:
    raise ageNotinRangeError("Age must be between 18 and 25:" + str(s))

def height_check(a):
  if a<168.00:
    raise heightNotinRangeError("Height must be at least 168.00:" + str(a))

def readFile(filename):
    f2 = open(filename)
    for customer in f2:
        print(customer.strip())        
    f2.close()
#main program
opt="y"
f1 = open("candidate.txt","w")
while opt=="y":

    try:
        name = input("Your name:")
        h = float(input("Your height:"))
        height_check(h)
        age = int(input("Your age:"))
        age_check(age)
    
    except ValueError as v:
        print(v)

    except heightNotinRangeError as e:
        print(e)
    except ageNotinRangeError as ex:
        print(ex)
        
    else:
        f1.write(name+","+str(h)+","+str(age)+"\n")
        opt = input("do you want to continue y or n:")
        if opt=="n":
            break
f1.close()   
readFile("candidate.txt")       
    