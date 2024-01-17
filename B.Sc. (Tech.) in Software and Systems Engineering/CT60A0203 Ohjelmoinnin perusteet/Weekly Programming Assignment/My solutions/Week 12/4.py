#from operator import itemgetter


def bestCustomer(txt):
    with open(txt, 'r') as f:
        content1 = f.readlines()
        maxval = 0
        for i in content1:
            i = i.split(',')
            i[3] = float(i[3])
            if i[3] > maxval:
                maxval = i[3]
                i[3] = str(i[3])
                bestcus = ','.join(i)
    return bestcus


def giftVoucher(txt):
    cus = bestCustomer(txt)
    cus = cus.split(',')
    cus[3] = float(cus[3])
    with open(txt, 'r') as f:
        content2 = f.readlines()
        lst = []
        for j in content2:
            if j == cus:
                pass
            else:
                j = j.split(',')
                lst.append(j)
    #sorted_content = sorted(lst, key=itemgetter(3), reverse=True)
    # for k in sorted_content:
    cus[3] = str(cus[3])+'\n'
    for k in lst:
        if k == cus:
            print(cus, '70%  Souvenir pouch')
        elif float(k[3]) <= 1500:
            k[3] = str(k[3])
            print(k, '15%')
        elif float(k[3]) <= 2500:
            k[3] = str(k[3])
            print(k, '30%')
        else:
            k[3] = str(k[3])
            print(k, '50%')


print('The best customer of the year:', bestCustomer('Customer.txt'))
giftVoucher('Customer.txt')
