# Xom Data · Two sum
# Problem: https://xomdata.com/practice/py-two-sum-indices
# Solved: 2026-09-10

def two_sum(numbers, target):
    lst = {}
    for i in range(len(numbers)):
        complet = target - numbers[i]
        if complet in lst:
            return [lst[complet], i]
        lst[numbers[i]] = i
    return []
