# Xom Data · Distance between two dates
# Problem: https://xomdata.com/practice/py-days-between
# Solved: 2026-11-10

from datetime import datetime
def days_between(a, b):
    dt_a = datetime.strptime(a, "%Y-%m-%d")
    dt_b = datetime.strptime(b, "%Y-%m-%d")
    return abs((dt_a - dt_b).days)
