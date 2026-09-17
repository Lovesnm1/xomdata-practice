# Xom Data · Mask emails in the log
# Problem: https://xomdata.com/practice/py-mask-email
# Solved: 2026-09-17

def mask_email(email):
    lst = email.split("@")
    chuoi = lst[0]
    if len(chuoi) <=2 : return f"{chuoi}@{lst[1]}"
    l1 = chuoi[0]
    l2 = chuoi[1]
    l3= ""
    for i in range(2, len(chuoi)):
        l3 += "*"
    l3 +="@"
    return l1+l2+l3+lst[1]
