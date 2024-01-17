def loanDueComplete(txt):
    print('No due Customers list')
    with open(txt, 'r') as f:
        lst = f.readlines()
        for i in range(len(lst)):
            a = lst[i].split(',')
            a = [x.replace('\n', '') for x in a]
            balance = float(a[3])-float(a[2])
            if balance >= 0:
                a.append(str(balance)+',No due')
                b = ','.join(a)
                print(b)
                with open(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\noDue.txt', 'a') as f1:
                    f1.write(str(b)+'\n')
            else:
                a.append(str(balance)+',Due')
                b = ','.join(a)
                with open(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\due.txt', 'a') as f2:
                    f2.write(str(b)+'\n')


def loanDue(due):
    print('\nCustomors that paid 60% of loan amount or more')
    with open(due, 'r') as t:
        lst2 = t.readlines()
        for j in range(len(lst2)):
            c = lst2[j].split(',')
            c = [j.replace('\n', '') for j in c]
            paid = float(c[3])/float(c[2])
            if paid >= 0.6:
                d = ','.join(c)
                print(d)


loanDueComplete(
    r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\loanCustomer.txt')
loanDue(r'C:\Users\Dell\Documents\LUT-yliopisto\Ashok Veerasamy - Introduction to Programming with Python\Assignments\Week 6\due.txt')
