# Xom Data · Spot a code entered twice
# Problem: https://xomdata.com/practice/py-has-duplicate
# Solved: 2026-09-18

def has_duplicate(items):
    lst = {}
    for i in items:
        if i not in lst:
            lst[i] = 1
        else : return True
    
    return False
