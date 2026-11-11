# Xom Data · Total and order count per region
# Problem: https://xomdata.com/practice/py-aggregate-two-fields
# Solved: 2026-11-11

def summarize(orders):
    lst = {}
    for order in orders:
        region = order["region"]
        amount = order["amount"]
        if region not in lst:
            lst[region] = {
                'total' : 0,
                'count': 0
            }
        lst[region]['total'] += amount
        lst[region]['count'] += 1
    return lst
