# Xom Data · Find the duplicate number
# Problem: https://xomdata.com/practice/py-find-duplicate
# Solved: 2026-09-21

def find_duplicate(numbers):
    lst = {}
    for i in numbers:
        if i not in lst:
            lst[i]=1
        else : return i
        
    return lst
