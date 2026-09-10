# Xom Data · Check palindrome
# Problem: https://xomdata.com/practice/py-palindrome
# Solved: 2026-09-10

def is_palindrome(text):
    if text == '' : return True
    lst = list(text.lower())
    if len(text) % 2 != 0 : False
    i=0
    while i < len(lst)/2:
        if lst[i] != lst[len(lst)-1-i] :return False
        i+=1
    return True
