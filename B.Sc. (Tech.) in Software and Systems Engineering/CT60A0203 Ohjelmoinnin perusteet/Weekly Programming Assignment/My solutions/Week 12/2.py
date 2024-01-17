def airQuality():
    try:
        inp = float(input('Please input PM2.5 value:'))
    except Exception:
        print('Input error.')
    else:
        if inp <= 35:
            print('Air quality is: Excellent.')
        elif inp <= 75:
            print('Air quality is: Good.')
        elif inp <= 115:
            print('Air quality is: Light pollution.')
        elif inp <= 150:
            print('Air quality is: Moderate pollution.')
        elif inp <= 250:
            print('Air quality is: Severe pollution.')
        elif inp <= 250:
            print('Air quality is: Most severe pollution.')
        else:
            print('Input error.')


airQuality()
