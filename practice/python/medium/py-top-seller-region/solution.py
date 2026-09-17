# Xom Data · Top-selling employee per region
# Problem: https://xomdata.com/practice/py-top-seller-region
# Solved: 2026-09-17

def top_seller(records):
    dt_thang={}
    for direction, name, revenue in records:
        if direction not in dt_thang:
            dt_thang[direction] = {}
        if name not in dt_thang[direction]:
            dt_thang[direction][name] = revenue
        else : dt_thang[direction][name] +=revenue
    dt = {}
    for direction, seller in dt_thang.items():
        dt[direction] = max (seller,key = seller.get)
    return dt
