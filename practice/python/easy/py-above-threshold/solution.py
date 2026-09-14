# Xom Data · Count students above the benchmark
# Problem: https://xomdata.com/practice/py-above-threshold
# Solved: 2026-09-14

def count_above(numbers, threshold):
    count =0
    for i in numbers:
        if i > threshold : count+=1
    return count
