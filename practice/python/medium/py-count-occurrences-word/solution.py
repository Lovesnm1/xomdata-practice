# Xom Data · Count word occurrences
# Problem: https://xomdata.com/practice/py-count-occurrences-word
# Solved: 2026-09-07

def count_word(text, target):
    lst = text.lower().split()
    count = 0
    for i in lst:
        if target == i : count +=1
    return count
