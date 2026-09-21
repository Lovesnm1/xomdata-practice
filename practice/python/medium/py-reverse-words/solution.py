# Xom Data · Reverse words in a string
# Problem: https://xomdata.com/practice/py-reverse-words
# Solved: 2026-09-21

def reverse_words(sentence):
    lst = sentence.split()
    chuoi = ""
    for i in lst[::-1]:
        chuoi += i + " "
    return chuoi
