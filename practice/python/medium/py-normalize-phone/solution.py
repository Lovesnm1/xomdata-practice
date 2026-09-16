# Xom Data · Normalize phone numbers
# Problem: https://xomdata.com/practice/py-normalize-phone
# Solved: 2026-09-16

def normalize(phone):
    return "".join([i for i in phone if i.isdigit()])
