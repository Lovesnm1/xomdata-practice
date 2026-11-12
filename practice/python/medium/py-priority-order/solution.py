# Xom Data · Order the support ticket queue
# Problem: https://xomdata.com/practice/py-priority-order
# Solved: 2026-11-12

def sort_by_priority(tickets):
    priority_order = {
        "high": 0,
        "medium":1,
        "low":2
    }
    return [
        code
        for code, prior in sorted(
            tickets,
            key = lambda k : priority_order[k[1]]
        )
    ]
