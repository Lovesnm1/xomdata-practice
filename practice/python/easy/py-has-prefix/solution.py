# Xom Data · Check whether an order belongs to a branch
# Problem: https://xomdata.com/practice/py-has-prefix
# Solved: 2026-10-07

def is_branch_code(code, prefix):
    if not code: return False
    return code.startswith(prefix)
