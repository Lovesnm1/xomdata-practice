# Xom Data · Letter grade from score
# Problem: https://xomdata.com/practice/py-grade-letter
# Solved: 2026-09-07

def grade_letter(score):
    if score >= 90 : return "A"
    if score >= 80 : return "B"
    if score >= 70 : return "C"
    if score >= 60 : return "D"
    return "F"
