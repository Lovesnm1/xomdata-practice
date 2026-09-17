# Xom Data · Discount tier by order value
# Problem: https://xomdata.com/practice/py-discount-tier
# Solved: 2026-09-17

def discount_percent(total):
    if total >=2000000 : return 10
    if total >=500000: return 5
    return 0
