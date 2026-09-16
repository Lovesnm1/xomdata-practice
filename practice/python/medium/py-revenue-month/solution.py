# Xom Data · Total revenue by month
# Problem: https://xomdata.com/practice/py-revenue-month
# Solved: 2026-09-16

def revenue_by_month(records):
    dt_thang = {}
    for month,revenue in records:
        if month in dt_thang:
            dt_thang[month] += revenue
        dt_thang.setdefault(month,revenue)
        print(dt_thang)
    return dt_thang
