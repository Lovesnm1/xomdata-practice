# Xom Data · Convert a number to binary
# Problem: https://xomdata.com/practice/py-int-to-binary
# Solved: 2026-09-15

def to_binary(number):
    if number == 0 : return 0
    chuoi = ""
    sodu=0
    while number != 0 :
        sodu = number % 2
        number = number // 2
        chuoi += str(sodu)
    return chuoi[::-1]
