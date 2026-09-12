# Xom Data · Generate initials
# Problem: https://xomdata.com/practice/py-initials
# Solved: 2026-09-12

def get_initials(full_name):
    if full_name == "" :return ""
    lst = full_name.split()
    viettat=""
    for i in lst:
        viettat +=i[0].upper()
    return viettat
