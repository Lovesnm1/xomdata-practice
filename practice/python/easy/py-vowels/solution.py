# Xom Data · Count vowels in a name
# Problem: https://xomdata.com/practice/py-vowels
# Solved: 2026-09-09

def count_vowels(name):
    count =0
    lst = list(name.lower())
    for i in lst:
        if i == "a" or i == "e" or i == "i" or i == "o" or i == "u":
            count+=1
    return count
