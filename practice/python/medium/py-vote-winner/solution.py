# Xom Data · Voting winner
# Problem: https://xomdata.com/practice/py-vote-winner
# Solved: 2026-10-19

def vote_winner(votes):
    lst = {}
    for vote in votes:
        if vote not in lst:
            lst[vote] = 1
        else: lst[vote] +=1
    return max(lst, key= lst.get)
