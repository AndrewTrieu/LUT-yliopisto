import random
x = True
while x == True:
    user = int(input("Enter 0-Scissors, 1-Rock or 2-Paper: "))
    computer = random.randint(0, 2)
    if user == 0 or user == 1 or user == 2:
        if user == computer:
            if user == 0:
                print("Computer is scissors, you are scissors. # IT'S A DRAW #")
            elif user == 1:
                print("Computer is rock, you are rock. # IT'S A DRAW #")
            else:
                print("Computer is paper, you are paper. # IT'S A DRAW #")
        elif user == 0:
            if computer == 1:
                print("Computer is rock, you are scissors. # COMPUTER WON - YOU LOST #")
            else:
                print("Computer is paper, you are scissors. # YOU WON #")
        elif user == 1:
            if computer == 0:
                print("Computer is scissors, you are rock. # YOU WON #")
            else:
                print("Computer is paper, you are rock. # COMPUTER WON - YOU LOST #")
        elif user == 2:
            if computer == 0:
                print("Computer is scissors, you are paper. # COMPUTER WON - YOU LOST #")
            else:
                print("Computer is rock, you are paper. # YOU WON #")
    else:
        print("Invalid choice.")
    play_again = input("\nPlay again? (Type no to stop): ")
    if play_again == "no":
        x = False
