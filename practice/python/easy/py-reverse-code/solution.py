# Xom Data · Reverse the order code
# Problem: https://xomdata.com/practice/py-reverse-code
# Solved: 2026-09-14

def reverse_code(code):
    lst = list(code)
    string=""
    for i in lst[::-1]:
        string += i
    return string
