# Xom Data · Capitalise a book title the publisher's way
# Problem: https://xomdata.com/practice/py-title-case-exceptions
# Solved: 2026-10-16

def book_title(text):
    result = text.capitalize()
    lst = result.split()
    arr= []
    for i in lst:
        if i not in ['of','and','the','in','on']:
            arr.append(i.capitalize())
        else : arr.append(i)
    return " ".join(arr)
