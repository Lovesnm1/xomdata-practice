# Xom Data · Ticket price by age
# Problem: https://xomdata.com/practice/py-ticket-price
# Solved: 2026-09-18

def ticket_price(age):
    if age >= 60 : return 50000
    if age >= 18 : return 100000
    if age >=6 : return 50000
    return 0
