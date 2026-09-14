# Xom Data · Weekday of a specific date
# Problem: https://xomdata.com/practice/py-weekday-of-date
# Solved: 2026-09-14

import datetime
def weekday_of(text):
    lst = text.split("-")
    nam = int(lst[0])
    thang = int(lst[1])
    ngay = int(lst[2])
    ngay_dt = datetime.date(nam, thang, ngay)
    thu_index = ngay_dt.weekday()
    cac_thu = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    return cac_thu[thu_index]

    return result
