# Xom Data · Top K largest elements
# Problem: https://xomdata.com/practice/py-top-k
# Solved: 2026-09-10

def top_k(numbers, k):
    arr= sorted(numbers,reverse = True)
    lst = []
    if k > len(arr): k = len(arr)
    for i in range(k):
        lst.append(arr[i])
        print(arr[i])
    return lst
