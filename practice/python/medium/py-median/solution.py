# Xom Data · Median of a list
# Problem: https://xomdata.com/practice/py-median
# Solved: 2026-09-16

import math
def median(numbers):
    numbers.sort()
    if len(numbers) % 2 != 0: 
        return numbers[round(len(numbers)/2)-1]
    so1 = numbers[len(numbers)//2]
    so2 = numbers[len(numbers)//2 -1]
    return round( (so1+so2) / 2 ,2)
