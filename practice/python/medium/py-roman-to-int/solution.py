# Xom Data · Roman to integer
# Problem: https://xomdata.com/practice/py-roman-to-int
# Solved: 2026-09-15

def roman_to_int(s):
    lst = list(s)
    count=0
    for i in range(len(lst)):
        if lst[i] == 'I': count +=1
        elif lst[i] =='V':
            if lst[i-1] == 'I': count += 3
            else : count += 5
        elif lst[i] == 'X':
            if lst[i-1] == 'I': count += 8
            else : count += 10
        elif lst[i] == 'L':
            if lst[i-1] == 'X': count+=30
            else : count+=50
        elif lst[i] == 'C':
            if lst[i-1] == 'X': count+= 80
            else : count+=100
        elif lst[i] == 'D':
            if lst[i-1] == 'C': count+=300
            else : count+=500
        elif lst[i] == 'M':
            if lst[i-1] == 'C': count+=800
            else: count+=1000
    return count
