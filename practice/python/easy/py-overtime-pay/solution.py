# Xom Data · Weekly pay with overtime hours
# Problem: https://xomdata.com/practice/py-overtime-pay
# Solved: 2026-09-18

def overtime_pay(hours, rate):
    if hours <= 40 : return round(hours * rate *1.0,2)
    return round(((hours - 40) * rate * 1.5 ) + 40 * rate,2)
