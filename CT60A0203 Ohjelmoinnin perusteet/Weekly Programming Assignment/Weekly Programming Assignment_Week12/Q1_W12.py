def excuteOption(option):
       
    if option==1:
        x = list(shot1&shot2&influshot)
        print(sorted(x,reverse=True))
       
    
    elif option==2:
        x=shot1-(shot2)
        y = influshot-shot2
        z = x.symmetric_difference(y)
        print(sorted(list(z)))   
        
    else:
        print("Bye")
       
#main program
shot1 ={"e101","e112","e132","e104","e105","e116","e227","e128","e109"}
shot2 = {"e112","e132","e105","e116","e227","e109"}
influshot = {"e101","e132","e104","e126","e227","e148","e109","e345","e156"}
x = int(input("Enter the option:"))
excuteOption(x)



