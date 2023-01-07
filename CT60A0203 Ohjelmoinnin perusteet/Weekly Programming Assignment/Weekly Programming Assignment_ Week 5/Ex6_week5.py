f = open("score.txt","r")
scorelist = f.readlines()
f.close()
highscore=0
lowscore=100
for score in scorelist:
    score=float(score)
    if score>highscore:
        highscore=score
    if score<lowscore:
        lowscore=score
print("The highest score is:",highscore)
print("The lowest score is:",lowscore)
f1 = open("score1.txt","w")
f1.write(str(highscore) +" " + str(lowscore))
f1.close()
