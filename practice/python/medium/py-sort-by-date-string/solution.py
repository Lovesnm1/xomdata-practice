# Xom Data · Order applications by submission date
# Problem: https://xomdata.com/practice/py-sort-by-date-string
# Solved: 2026-09-17

from datetime import datetime
def by_date(records):
    records.sort(key = lambda x: (datetime.strptime(x[1], "%d/%m/%Y"),x[0]))
    result = []
    for i in records:
        result.append(i[0])
    return result
