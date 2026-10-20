# Xom Data · Multiply strings
# Problem: https://xomdata.com/practice/py-multiply-strings
# Solved: 2026-10-20

def multiply_strings(num1, num2):
    a= num1
    b= num2
    result = [0] * (len(a) + len(b))
    for i in range(len(a)-1,-1,-1):
        for j in range(len(b)-1,-1,-1):
            pos1 = i + j + 1
            pos2 = i + j
            total = int(a[i]) * int(b[j]) + result[pos1]
            result[pos1] = total % 10
            result[pos2] += total // 10
    return "".join([str(x) for x in result]).lstrip("0") or "0"
