option = 1
while option!=3:

    print("Main Menu:")

    print("1. Replace second string")
    print("2. Exciting summer job")
    print("3. Exit")
    option = int(input("Select your option:"))

           
    if option == 1:
    
        first_S =input ("Give the first string:")
        second_S =input ("Give the replace string to be in double quotes:")
        quote = '"'
        second_Quoted = quote + second_S + quote
        replace_S = first_S.replace(second_S,second_Quoted)
        print ("Replaced string:",replace_S)

    elif option == 2:
        
        name = input("Your name: ")
        hw = int(input("Hours worked for 5 weeks: "))
        sb = float(input("Money spent on buying saving bonds in € (if doesn't enter 0): "))
    
        incomeBeforeTax = hw*15.50
        netIncome = (incomeBeforeTax) - (incomeBeforeTax*0.14) 
        t_25 = round ((netIncome*0.25),2)  #25% of netIncome 
        cl_sc =  round ((netIncome*0.11),2) # 10% spent on cloths + 1% on school supplies
        sm = netIncome - cl_sc   # money saved after cloths and schools supplies bought
        
        print("Name: ",name)
        print("Income before tax: ",incomeBeforeTax)
        print("Income after tax: ",netIncome)
        
        p_sb = 0 # initialisation of parents bond for calculation
        
      
        if sb>0 and sb<t_25:  # if student spent <25% of netincome for savings bond
            p_sb = (sb//1)*0.25 + (0.01 * sm)  # money spent on every euro only. So I used // here
    
        elif sb==t_25:        # if student spent 25% of netincome for savings bond
            p_sb = 5.0
    
        elif sb>t_25:          # if student spent >25% of netincome for savings bond
            p_sb = (sb//1)*0.40 + (0.02 * sm)  # money spent on every euro only. So I used // here
    
        else:                  # if student did not spent any moneyt for savings bond
            p_sb = (sm*0.01)
    
        print("Money spent on cloths and accessories: ",round((netIncome*0.10),2))
        print("Money spent on school supplies: ",round((netIncome*0.01),2))
        print("Money spent on savings bonds: ",round(sb,2))
        print("Money spent by parents to buy additional savings bonds: ",round(p_sb,2))
        
    elif option == 3:
        print("Bye from Menu_ See you again")
        break

    
    