# Xom Data · Pick the columns to export from a record table
# Problem: https://xomdata.com/practice/py-select-columns
# Solved: 2026-10-13

def select_columns(rows, columns):
    if rows == [] : return []
    lst = []
    for row in rows:
        new_row = {}
        for key in columns:
            if key in row:
                new_row[key] = row[key]
        lst.append(new_row)
    return lst
