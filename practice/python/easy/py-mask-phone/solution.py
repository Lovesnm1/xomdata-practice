# Xom Data · Mask phone number
# Problem: https://xomdata.com/practice/py-mask-phone
# Solved: 2026-09-13

def mask_phone(phone):
    lst = list(phone)
    if len(lst) <= 3 :return phone
    st =""
    for i in range(len(lst)-3):
        st +="*"
    return st+phone[-3:]
