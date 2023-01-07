import pandas as pd # importing pandas library for statistics
workbook = pd.read_excel("quizscores.xlsx") #reading the data from xls file
workbook.head()
#print(workbook)
#print(workbook['Quiz1'])
#print(workbook['Quiz1'].iloc[0])
y = (workbook['Quiz1'])
x = (workbook['Quiz2'])

