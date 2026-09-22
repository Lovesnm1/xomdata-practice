# Xom Data · Longest word in a sentence
# Problem: https://xomdata.com/practice/py-longest-word
# Solved: 2026-09-22

def longest_word(sentence):
    lst = sentence.split()
    max = 0
    chuoi = ""
    for i in lst:
        if len(i) > max : 
            print(i)
            max = len(i)
            chuoi = i
    return chuoi
