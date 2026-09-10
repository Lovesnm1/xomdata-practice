# Xom Data · Most frequent character
# Problem: https://xomdata.com/practice/py-most-frequent
# Solved: 2026-09-10

def most_frequent(text):
    lst = list(text)
    count = {}
    for i in lst:
        count.setdefault(i,0)
        count[i]+=1
    return max(count, key = count.get)
