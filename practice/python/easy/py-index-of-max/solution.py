# Xom Data · Position of the priciest item in the table
# Problem: https://xomdata.com/practice/py-index-of-max
# Solved: 2026-10-13

def index_of_max(prices):
    if prices == [] : return -1
    max = prices[0]
    vitri=0
    for i in range (1,len(prices)):
        if prices[i] > max : 
            max = prices[i]
            vitri = i
    return vitri
