# Xom Data · Best selling products board
# Problem: https://xomdata.com/practice/py-top-n-with-tie
# Solved: 2026-11-10

def top_products(sales, n):
    if n <= 0 or not sales: return []
    lst = sorted(sales, key=lambda k : (-sales[k],k))
    return lst[:n]
