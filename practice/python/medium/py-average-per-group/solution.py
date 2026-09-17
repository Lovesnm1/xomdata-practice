# Xom Data · Average score by class
# Problem: https://xomdata.com/practice/py-average-per-group
# Solved: 2026-09-17

def average_per_group(pairs):
    group = {}
    for cls,score in pairs:
        if cls in group:
            group[cls].append(score)
        else:
            group[cls] = group.get(cls,[score])
    avg_cls = {}
    for cls, score in group.items():
        avg_cls[cls] = round(sum(score) / len(score),2)
    return avg_cls
