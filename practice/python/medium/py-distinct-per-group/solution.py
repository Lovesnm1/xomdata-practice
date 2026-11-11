# Xom Data · Distinct values per group
# Problem: https://xomdata.com/practice/py-distinct-per-group
# Solved: 2026-11-11

def distinct_per_group(pairs):
    group = {}
    for key, value in pairs:
        if key not in group :
            group[key] = set()
        group[key].add(value)
    return {
        key: len(value) for key,value in group.items()
    }
