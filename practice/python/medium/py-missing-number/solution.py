# Xom Data · Missing number
# Problem: https://xomdata.com/practice/py-missing-number
# Solved: 2026-09-16

def missing_number(numbers):
    if len(numbers) == 1 and numbers[0] == 1: return 2
    for i in range(0,numbers[len(numbers)-1]):
        if i+1 != numbers[i] : return i+1
