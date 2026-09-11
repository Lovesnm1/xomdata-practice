# Xom Data · Maximum subarray sum
# Problem: https://xomdata.com/practice/py-max-subarray
# Solved: 2026-09-11

def max_subarray(numbers):
    maximum = numbers[0]
    current = numbers[0]
    for i in numbers[1:] :
        current = max(i, current + i)
        maximum = max ( maximum, current)
    return maximum
