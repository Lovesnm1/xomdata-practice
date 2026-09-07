# Xom Data · Average score by subject
# Problem: https://xomdata.com/practice/py-average
# Solved: 2026-09-07

def average_score(scores):
    if scores == [] : return 0
    return round(sum(scores)/len(scores),2)
