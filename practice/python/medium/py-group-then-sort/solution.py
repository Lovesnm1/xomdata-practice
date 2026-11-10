# Xom Data · Order regions by total sales
# Problem: https://xomdata.com/practice/py-group-then-sort
# Solved: 2026-11-10

def sorted_by_group_total(sales):
    lst = {}
    for region, revenue in sales:
        if region not in lst:
            lst[region] = revenue
        else:
            lst[region] += revenue
    sorted_regions = sorted(lst.keys(), key=lambda k: (-lst[k], k))
    return sorted_regions
