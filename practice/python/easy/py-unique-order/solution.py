# Xom Data · Remove duplicate names from the invite list
# Problem: https://xomdata.com/practice/py-unique-order
# Solved: 2026-10-30

def unique(items):
    lst = []
    for i in items:
        if i not in lst:
            lst.append(i)
    return lst
