# Xom Data · Longest continuous increasing subsequence
# Problem: https://xomdata.com/practice/py-longest-run
# Solved: 2026-09-15

def longest_increasing_run(numbers):
    if numbers == [] :return 0
    dodai=1
    maxdodai = 1
    maxmimum = numbers[0]
    for i in numbers[1:]:
        if i > maxmimum:
            dodai += 1
            maxmimum = i 
        else :
            dodai = 1
            maxmimum = i
        maxdodai = max(maxdodai,dodai)
    return maxdodai
