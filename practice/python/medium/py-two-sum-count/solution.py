# Xom Data · Count pairs with a target sum
# Problem: https://xomdata.com/practice/py-two-sum-count
# Solved: 2026-09-10

def count_pairs(numbers, target):
    count = 0
    for i in range(len(numbers)):
        for j in range(i+1,len(numbers)):
            if (numbers[i] + numbers[j] == target):
                count+=1
    return count
