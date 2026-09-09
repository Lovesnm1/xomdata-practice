# Xom Data · Group products by category
# Problem: https://xomdata.com/practice/py-group-category
# Solved: 2026-09-09

def group_by_category(items):
    cat = {}
    for goods,category in items:
        cat.setdefault(category,[])
        cat[category].append(goods)
    return cat
