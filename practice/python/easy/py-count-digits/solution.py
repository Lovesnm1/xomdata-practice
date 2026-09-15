# Xom Data · Count digits in the password
# Problem: https://xomdata.com/practice/py-count-digits
# Solved: 2026-09-15

def count_digits(text):
    lst = list(text)
    count =0
    for i in lst:
        if i.isdigit() : count +=1
    return count
