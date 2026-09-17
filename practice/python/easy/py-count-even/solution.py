# Xom Data · Count products with an even code
# Problem: https://xomdata.com/practice/py-count-even
# Solved: 2026-09-17

def count_even(numbers):
    count = 0
    for i in numbers:
        if i % 2 == 0 : count+=1
    return count
