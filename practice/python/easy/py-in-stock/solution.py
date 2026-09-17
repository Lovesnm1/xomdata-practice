# Xom Data · Count in-stock products
# Problem: https://xomdata.com/practice/py-in-stock
# Solved: 2026-09-17

def count_in_stock(quantities):
    count = 0
    for i in quantities:
        if i != 0 : count+=1
    return count
