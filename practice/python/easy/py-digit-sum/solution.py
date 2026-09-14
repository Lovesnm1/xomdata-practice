# Xom Data · Sum of digits in the code
# Problem: https://xomdata.com/practice/py-digit-sum
# Solved: 2026-09-14

def digit_sum(number):
    lst = list(str(number))
    total = 0
    for i in lst:
        total += int(i)
    return total
