# Xom Data · Check leap year
# Problem: https://xomdata.com/practice/py-leap-year
# Solved: 2026-09-17

def is_leap_year(year):
    if year % 400 == 0 : return True
    if year % 4 ==0 and year % 100 != 0 : return True
    return False
