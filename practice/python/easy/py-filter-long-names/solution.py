# Xom Data · Find names too long for the card
# Problem: https://xomdata.com/practice/py-filter-long-names
# Solved: 2026-11-05

def long_names(names, min_len):
    lst = []
    for i in names:
        if len(i) > min_len : lst.append(i)
    return lst
