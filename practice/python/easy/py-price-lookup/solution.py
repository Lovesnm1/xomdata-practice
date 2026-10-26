# Xom Data · Look a price up by product code
# Problem: https://xomdata.com/practice/py-price-lookup
# Solved: 2026-10-26

def price_of(prices, code):
    for key, value in prices.items():
        if key == code:
            return value
    return 0
