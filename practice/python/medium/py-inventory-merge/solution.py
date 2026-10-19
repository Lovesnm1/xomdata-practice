# Xom Data · Consolidate inventory across warehouses
# Problem: https://xomdata.com/practice/py-inventory-merge
# Solved: 2026-10-19

def merge_inventory(warehouses):
    lst = {}
    for row in warehouses:
        for key,value in row.items():
            if key not in lst:
                lst[key] = value
            else:
                lst[key] +=value 
    return lst
