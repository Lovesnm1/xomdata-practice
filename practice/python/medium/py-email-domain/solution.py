# Xom Data · Extract domain from email
# Problem: https://xomdata.com/practice/py-email-domain
# Solved: 2026-09-07

def get_domain(email):
    lst = email.split("@")
    return lst[1]
