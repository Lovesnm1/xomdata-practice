# Xom Data · Valid nested parentheses
# Problem: https://xomdata.com/practice/py-valid-brackets
# Solved: 2026-09-14

def is_valid(s):
    if s == "" :return True
    lst = list(s)
    dem_tron=0
    dem_vuong=0
    dem_nhon=0
    for i in range(len(lst)):
        if lst[i] == '(' : dem_tron +=1
        elif lst[i] == ')' : 
            if (dem_vuong == 1 or dem_nhon == 1) and lst[i-1] != '(': return False
            dem_tron -=1
        elif lst[i] == '[' : dem_vuong +=1
        elif lst[i] == ']' : 
            if (dem_tron == 1 or dem_nhon == 1) and lst[i-1] != '[': return False
            dem_vuong-=1
        elif lst[i] == '{' : dem_nhon+=1
        else :
            if (dem_tron == 1 or dem_vuong == 1) and lst[i-1] != '{': return False 
            dem_nhon-=1
        if dem_tron < 0 or dem_vuong <0 or dem_nhon < 0: return False
    return dem_nhon == 0 and dem_vuong ==0 and dem_tron == 0
