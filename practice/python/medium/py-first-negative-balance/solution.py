# Xom Data · First day the balance goes negative
# Problem: https://xomdata.com/practice/py-first-negative-balance
# Solved: 2026-11-10

def first_negative_day(changes):
    total = 0
    for i in range(0,len(changes)):
        total = total + changes[i]
        if total < 0 : return i
    return -1
