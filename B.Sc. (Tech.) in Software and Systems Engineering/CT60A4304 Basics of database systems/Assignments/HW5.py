####################################################
############## Do not touch this part ##############
import sqlite3
db = sqlite3.connect('hw5tennis.db')
cur = db.cursor()


def initializeDB():
    try:
        f = open("sqlcommands.sql", "r")
        commandstring = ""
        for line in f.readlines():
            commandstring += line
        cur.executescript(commandstring)
    except sqlite3.OperationalError:
        print("Database exists, skip initialization")
    except:
        print("No SQL file to be used for initialization")


def main():
    initializeDB()
    userInput = -1
    while(userInput != "0"):
        print("\nMenu options:")
        print("1: Print Players")
        print("2: Print Ranking")
        print("3: Print Matches")
        print("4: Search for one player")
        print("5: Move matchdate")
        print("6: Delete player")
        print("0: Quit")
        userInput = input("What do you want to do? ")
        print(userInput)
        if userInput == "1":
            printPlayers()
        if userInput == "2":
            printRanking()
        if userInput == "3":
            printMatches()
        if userInput == "4":
            searchPlayer()
        if userInput == "5":
            moveMatch()
        if userInput == "6":
            deletePlayer()
        if userInput == "0":
            print("Ending software...")
    db.close()
    return

############## Do not touch part ends ##############
####################################################


############## Please modify the following ##############
def printPlayers():
    print("Printing players")
    """
    Insert the correct Python and SQL commands
    to print all players
    """
    # Start your modifications after this comment
    cur.execute("SELECT * FROM Player")
    for i in cur.fetchall():
        print(i)
    return


def printRanking():
    print("Printing ranking")
    """
    Insert the correct Python and SQL commands 
    to print all ranking information
    """
    # Start your modifications after this comment

    cur.execute("SELECT * FROM Ranking")
    for i in cur.fetchall():
        print(i)
    return


def printMatches():
    print("Printing matches")
    """ 
    Insert the correct Python and SQL commands 
    to print all ranking information
    """
    # Start your modifications after this comment
    cur.execute("SELECT * FROM Matches")
    for i in cur.fetchall():
        print(i)
    return


def searchPlayer():
    playerName = input("What is the player's surname? ")
    """ 
    Insert the correct Python and SQL commands to find the player 
    using the given surname
    """
    # Start your modifications after this comment
    cur.execute("SELECT * FROM Player WHERE last_name = '%s'" % playerName)
    info = cur.fetchall()[0]
    print("ID: "+str(info[0]))
    print("First name: "+str(info[1]))
    print("Last name: "+str(info[2]))
    print("Birthdate: "+str(info[4]))
    print("Nationality:"+str(info[3]))
    return


def moveMatch():
    matchID = input("What is the matchID of the match you want to move? ")
    newMatchDate = input("What is the new matchdate you want to set?")

    """ 
    Using the correct Python and SQL comands:
    Change the match date based on the given matchID and new matchdate
    IF a new matchdate is set to NULL, set the winner and result to NULL as well
    """
    # Start your modifications after this comment
    if newMatchDate == 'NULL':
        cur.execute("UPDATE Matches SET resultSets = %s, winnerID = %s, matchdate = %s WHERE matchID = %s" %
                    ('NULL', 'NULL', 'NULL', matchID))
    else:
        cur.execute("UPDATE Matches SET matchdate = '%s' WHERE matchID = %s" %
                    (newMatchDate, matchID))
    db.commit()
    return


def deletePlayer():
    playerID = input("What is the player's PlayerID? ")
    """ 
    Using the correct Python and SQL comands:
    Delete the Player and his Ranking information
    Additionally, set the playerid to NULL in ALL match-data it is found
    """
    # Start your modifications after this comment
    cur.execute("DELETE FROM Player WHERE playerid = %s" % playerID)
    cur.execute("DELETE FROM Ranking WHERE FK_playerid = %s" % playerID)
    cur.execute(
        "UPDATE Matches SET FK_playerOne = NULL WHERE FK_playerOne = %s" % playerID)
    cur.execute(
        "UPDATE Matches SET FK_playerTwo = NULL WHERE FK_playerTwo = %s" % playerID)
    cur.execute(
        "UPDATE Matches SET winnerID = NULL WHERE winnerID = %s" % playerID)
    db.commit()


main()
