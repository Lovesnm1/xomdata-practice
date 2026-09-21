# Xom Data · Add binary
# Problem: https://xomdata.com/practice/py-add-binary
# Solved: 2026-09-21

def add_binary(a, b):
    soA = int(a,2)
    soB = int(b,2)
    return bin(soA+soB)[2:]
