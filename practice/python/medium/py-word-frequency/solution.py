# Xom Data · Word frequency count in text
# Problem: https://xomdata.com/practice/py-word-frequency
# Solved: 2026-09-09

def word_frequency(text):
    lst = text.split()
    word_count = {}
    for i in lst:
        word_count.setdefault(i,0)
        word_count[i] += 1
    return word_count
