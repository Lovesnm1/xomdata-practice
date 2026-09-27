# Xom Data · Weekday name from its number
# Problem: https://xomdata.com/practice/py-weekday-name
# Solved: 2026-09-27

def weekday_name(n):
    if n<1 or n>7 : return None
    if n==1 : return "Monday"
    if n==2: return "Tuesday"
    if n==3: return "Wednesday"
    if n==4: return "Thursday"
    if n == 5: return "Friday"
    if n==6 : return "Saturday"
    if n==7 : return "Sunday"
