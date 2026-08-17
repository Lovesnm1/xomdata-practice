-- Xom Data · Interview call numbers
-- Problem: https://xomdata.com/practice/medium-rownum-001
-- Solved: 2026-08-17

-- Viết SQL của bạn ở đây
    SELECT RANK() OVER(
        ORDER BY score DESC, candidate_name
    ) as call_no,
    candidate_name, score
    FROM candidates
