# Xom Data · Split an ISO date string into parts
# Problem: https://xomdata.com/practice/py-parse-date-parts
# Solved: 2026-10-16

def date_parts(text):
    lst = text.split("-")
    tu= (int(lst[0]),int(lst[1]),int(lst[2]))
    return tu
