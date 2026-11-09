# Xom Data · Scramble a promo code with a letter shift
# Problem: https://xomdata.com/practice/py-caesar-shift
# Solved: 2026-11-09

def shift_code(text, shift):
    lst = []
    for i in text:
        if i.isalpha():
            kytu = chr((ord(i) - ord('a') + shift) % 26 + ord('a'))
            lst.append(kytu)
        else :
            lst.append(i)
    return "".join(lst)
