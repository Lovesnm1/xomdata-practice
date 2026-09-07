# Xom Data · FizzBuzz
# Problem: https://xomdata.com/practice/py-fizzbuzz
# Solved: 2026-09-07

def fizzbuzz(n):
    if n == 0 : return []
    lst = []
    i=1
    while (i <= n):
        if (i % 3 == 0 and i % 5 ==0) : lst.append("FizzBuzz")
        elif (i % 3 ==0) : lst.append("Fizz")
        elif (i % 5 ==0) : lst.append("Buzz")
        else : lst.append(str(i))
        i+=1
    return lst
