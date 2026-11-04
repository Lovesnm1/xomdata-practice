# Xom Data · Pad an order id with leading zeros
# Problem: https://xomdata.com/practice/py-pad-order-id
# Solved: 2026-11-04

def pad_order_id(number):
    if len(str(number)) >= 5 : return number
    n = len(str(number))
    st = str(number)
    while n < 5:
        st = "0" + st
        n+=1
    return st
