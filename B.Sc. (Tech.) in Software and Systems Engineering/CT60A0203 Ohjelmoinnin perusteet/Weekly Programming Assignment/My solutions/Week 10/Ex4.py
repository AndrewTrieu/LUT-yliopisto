def QuizResults(txt):
    with open(txt, 'r') as f:
        content = f.readlines()
        content = [x.replace('\n', '').replace(' ', '') for x in content]
        cnt = 0
        for i in content:
            if not i:
                content.remove(i)
            else:
                ind = content.index(i)+1
                i = i.split(',')
                i = [int(y) for y in i]
                high = max(i)
                week = i.index(high)+1
                print('student', ind,
                      ': '+'Quiz', week, ':', high)
                if i[4] < 50:
                    cnt += 1
        print('Number of students failed in Quiz 5:', cnt)


QuizResults('marks.txt')
