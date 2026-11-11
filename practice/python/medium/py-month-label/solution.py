# Xom Data · Month label for a report heading
# Problem: https://xomdata.com/practice/py-month-label
# Solved: 2026-11-11

def month_label(ym):
    lst = ym.split("-")
    if ym == [] : return []
    if lst[1] == "01" : return "January " +lst[0]
    if lst[1] == "02" : return "February "+lst[0]
    if lst[1] == "03" : return "March "+lst[0]
    if lst[1] == "04" : return "April "+lst[0]
    if lst[1] == "05" : return "May "+lst[0]
    if lst[1] == "06" : return "June "+lst[0]
    if lst[1] == "07" : return "July "+lst[0]
    if lst[1] == "08" : return "August "+lst[0]
    if lst[1] == "09" : return "September "+lst[0]
    if lst[1] == "10" : return "October "+lst[0]
    if lst[1] == "11" : return "November "+lst[0]
    return "December "+lst[0]
