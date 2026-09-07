# Xom Data · Second largest value
# Problem: https://xomdata.com/practice/py-second-largest
# Solved: 2026-09-07

def second_largest(numbers):
    if numbers == [] :return None
    lst = sorted(set(numbers), reverse = True)
    if len(list(lst)) == 1 : return None
    return list(lst)[1]
