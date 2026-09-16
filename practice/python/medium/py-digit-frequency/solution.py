# Xom Data · Digit frequency
# Problem: https://xomdata.com/practice/py-digit-frequency
# Solved: 2026-09-16

def digit_frequency(number):
    lst = list(str(number))
    ds = {}
    for i in lst:
        if i in ds:
            ds[i] +=1
        ds.setdefault(i,1)
    return ds
