# Xom Data · Cumulative total by day
# Problem: https://xomdata.com/practice/py-running-total
# Solved: 2026-09-10

def running_total(numbers):
    lst = []
    total=0
    for i in numbers:
        total+=i
        lst.append(total)
    return lst
