# Xom Data · Take row n if it exists
# Problem: https://xomdata.com/practice/py-nth-or-none
# Solved: 2026-10-24

def nth_or_none(items, n):
    if n < 0 : return None
    if items == [] : return None
    if n >= len(items) : return None
    return items[n]
