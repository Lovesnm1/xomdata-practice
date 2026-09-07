# Xom Data · Check prime number
# Problem: https://xomdata.com/practice/py-is-prime
# Solved: 2026-09-07

def is_prime(n):
    if n < 2 :return False
    if n == 2 :return True
    if n % 2 == 0 :return False
    else :
        for i in range(3,n // 2):
            if n % i == 0 : return False
    return True
