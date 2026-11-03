# Xom Data · Add up the day's slip numbers
# Problem: https://xomdata.com/practice/py-sum-to-n
# Solved: 2026-11-03

def sum_to(n):
    total = 0
    for i in range(0,n+1):
        total+=i
    return total
