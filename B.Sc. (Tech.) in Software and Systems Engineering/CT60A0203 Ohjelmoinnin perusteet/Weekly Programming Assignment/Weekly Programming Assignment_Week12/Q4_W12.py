def sortValue(line):
    line_fields = line.strip().split(',')
    price = float(line_fields[3])
    return price

def bestCustomer(filename):
    f1 = open(filename)
    customer = f1.readlines()
    customer.sort(key=sortValue,reverse=True)
    f1.close()
    return customer[0]

def giftVoucher(filename):
    f1 = open(filename)
    gift = ["15%","30%","50%","70%"]
    y = bestCustomer(filename).split(",")
    for customer in f1:
        c = customer.split(",")
        if float(c[3])<1500: 
            print(c,gift[0])
        elif float(c[3])<=2500:
            print(c,gift[1])
        elif float(c[3])!=float(y[3]):
            print(c,gift[2])
        else:
            print(c,gift[3]," Souvenir pouch")

#main program
print("The best customer of the year:",bestCustomer("Customer.txt"))
giftVoucher("Customer.txt")