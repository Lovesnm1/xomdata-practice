# Xom Data · Next working day
# Problem: https://xomdata.com/practice/py-next-workday
# Solved: 2026-10-13

from datetime import datetime, timedelta
def next_workday(text):
    dt = datetime.strptime(text, "%Y-%m-%d")
    if dt.weekday() == 4 : 
        return (dt + timedelta(days=3)).strftime("%Y-%m-%d")
    elif dt.weekday() == 5:
        return (dt + timedelta(days=2)).strftime("%Y-%m-%d")
    return (dt + timedelta(days=1)).strftime("%Y-%m-%d")
