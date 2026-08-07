-- Xom Data · Safety training results
-- Problem: https://xomdata.com/practice/easy-case-001
-- Solved: 2026-08-07

SELECT trainee_name, score, 
    CASE
        WHEN score >= 70 THEN 'Pass'
        Else 'Fail'
    End as result
FROM trainees
