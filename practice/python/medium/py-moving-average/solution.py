# Xom Data · Moving average over a window of k
# Problem: https://xomdata.com/practice/py-moving-average
# Solved: 2026-09-10

def moving_average(numbers, k):
    if k > len(numbers) :return []
    lst = []
    for i in range(len(numbers)):
        if (len(numbers) - i) >= k :
            avg=0
            total=0
            for j in range(i,i+k):
                total+=numbers[j]
            avg = round(total/k,2)
            print(avg)
            lst.append(avg)
    return lst
