# Xom Data · Branch leading on revenue
# Problem: https://xomdata.com/practice/py-best-branch
# Solved: 2026-09-21

def best_branch(branches):
    if branches == {} : return None
    return max(branches, key = branches.get)
