class salaryNotinRangeError(Exception):
    def __init__(self, arg): 
        self.msg = arg     

class ageNotinRangeError(Exception):
    def __init__(self, arg): 
        self.msg = arg     

def salary_check(s):
  if s<1500 or s>2500:
    raise salaryNotinRangeError("salary must be between 1500 and 2500:" + str(s))

def age_check(a):
  if a<25:
    raise ageNotinRangeError("age must be 25 or more:" + str(a))

def readFile(filename):
    f2 = open(filename)
    for customer in f2:
        print(customer.strip())        
    f2.close()
#main program
opt="y"
f1 = open("customer.txt","w")
while opt=="y":

    try:
        name = input("Your name:")
        salary = float(input("Your salary:"))
        salary_check(salary)
        age = int(input("Your age:"))
        age_check(age)
    
    except ValueError as v:
        print(v)

    except salaryNotinRangeError as e:
        print(e)
    except ageNotinRangeError as ex:
        print(ex)
        
    else:
        f1.write(name+","+str(salary)+","+str(age)+"\n")
        opt = input("do you want to continue y or n:")
        if opt=="n":
            break
f1.close()   
readFile("customer.txt")       
    