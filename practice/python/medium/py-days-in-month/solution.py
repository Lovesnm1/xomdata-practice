# Xom Data · How many days a given month has
# Problem: https://xomdata.com/practice/py-days-in-month
# Solved: 2026-09-21

def days_in_month(year, month):
    if month == 2 :
        if year % 400 == 0 : return 29
        if year % 4  == 0 and year % 100 != 0 : return 29
        return 28
    if month == 1 or month == 3 or month == 5 or month == 7 or month ==8 or month == 10 or month == 12 : return 31
    return 30
