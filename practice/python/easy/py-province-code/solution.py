# Xom Data · Take the province code off a file reference
# Problem: https://xomdata.com/practice/py-province-code
# Solved: 2026-09-25

def province_code(code):
    if code == "" : return ''
    if len(code) < 3 : return code
    lst = code[0:3]
    return lst
