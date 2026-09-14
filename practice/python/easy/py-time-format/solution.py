# Xom Data · Convert minutes to hours and minutes
# Problem: https://xomdata.com/practice/py-time-format
# Solved: 2026-09-14

def format_duration(minutes):
    gio = minutes // 60
    phut = minutes % 60
    return f"{gio}:{phut:02d}"
