# Air qutlity is Excellent. Good. Light pollution.
# Moderate pollution. Severe pollution. Most-severe pollution.
def airQuality():
    try:
        pm25=float(input("Please input PM2.5 value:"))
        if 0<=pm25<=35:
            AirQualityGrade="Excellent."
        elif 35<pm25<=75:
            AirQualityGrade="Good."
        elif 75<pm25<=115:
            AirQualityGrade="Light pollution."
        elif 115<pm25<=150:
            AirQualityGrade="Moderate pollution."
        elif 150<pm25<=250:
            AirQualityGrade="Severe pollution."
        elif 250<pm25:
            AirQualityGrade="Most-severe pollution."
        print("Air quality is: "+AirQualityGrade)
    except ValueError:
        print("Input error.")

#mainprogram
airQuality()      