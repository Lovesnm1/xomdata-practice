# Xom Data · Assign ranks with ties to runners
# Problem: https://xomdata.com/practice/py-competition-rank
# Solved: 2026-10-29

def ranks(scores):
    sort_score= sorted(scores, reverse = True)
    result = []
    for score in scores:
        rank = sort_score.index(score) + 1
        result.append(rank)
    return result
