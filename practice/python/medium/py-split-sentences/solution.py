# Xom Data · Split a paragraph into sentences
# Problem: https://xomdata.com/practice/py-split-sentences
# Solved: 2026-09-22

def split_sentences(text):
    if text == "" : return []
    result  = text.strip()
    arr = []
    k=0
    for i in range(len(result)):
        if result[i] in [".","?","!"]:
            subtext=result[k:i+1]
            arr.append(subtext.strip())
            k = i+1
    if k < len(result):
        remain = result[k::].strip()
        if remain != "":
            arr.append(remain)
    return arr
