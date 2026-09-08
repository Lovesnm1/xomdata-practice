# Xom Data · Check strong password
# Problem: https://xomdata.com/practice/py-password-strength
# Solved: 2026-09-08

def is_strong(password):
    lst = list(password)
    if len(lst) >= 8:
        c1=0
        c2=0
        c3=0
        for char in lst:
            if char.isupper() : c1=1
            elif char.islower() : c2=1
            elif char.isdigit() : c3=1
            if c1==c2==c3 : return True
    return False
