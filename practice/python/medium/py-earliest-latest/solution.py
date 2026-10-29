# Xom Data · Earliest and latest date in the ledger
# Problem: https://xomdata.com/practice/py-earliest-latest
# Solved: 2026-10-29

from datetime import datetime

def date_span(dates):
    if dates == []:
        return None

    date_format = "%Y-%m-%d"

    min_date = datetime.strptime(dates[0], date_format)
    max_date = datetime.strptime(dates[0], date_format)

    for i in range(1, len(dates)):
        dt_obj = datetime.strptime(dates[i], date_format)

        if dt_obj > max_date:
            max_date = dt_obj

        if dt_obj < min_date:
            min_date = dt_obj

    return (
        min_date.strftime(date_format),
        max_date.strftime(date_format)
    )
