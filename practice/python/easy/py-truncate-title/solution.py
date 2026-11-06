# Xom Data · Shorten an over-long title on an article card
# Problem: https://xomdata.com/practice/py-truncate-title
# Solved: 2026-11-06

def shorten(text, limit):
    if text == [] : return []
    if len(text) <= limit : return text
    return text[:limit]+"..."
