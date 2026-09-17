# Xom Data · Normalize customer names
# Problem: https://xomdata.com/practice/py-title-case
# Solved: 2026-09-17

def capitalize_words(text):
     words = text.split() 
     capitalized_words = [word.capitalize() for word in words]
     return " ".join(capitalized_words)
