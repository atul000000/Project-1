use project;
select * from finance_1;
select * from finance_2;
desc finance_1;
desc finance_2;

# -----KPI1----- #
select issue_d, sum(loan_amnt) as total_loan_amnt from finance_1
group by issue_d
order by issue_d;

# -----KPI2----- #
SELECT f1.grade, f1.sub_grade, SUM(revol_bal) AS revol_bal
FROM finance_1 AS f1
JOIN finance_2 AS f2 ON f1.id = f2.id
GROUP BY f1.grade, f1.sub_grade
ORDER BY f1.grade
LIMIT 0, 200;

# -----KPI3----- #
select finance_1.verification_status,
finance_2.total_pymnt
from finance_1
join finance_2 on
finance_1.id = finance_2.id;

# -----KPI4----- #
select addr_state as state, issue_d as Month, loan_status from finance_1; 

# -----KPI5----- #
select finance_1.home_ownership , finance_2.last_pymnt_d from finance_1
join finance_2 on finance_1.id=finance_2.id
order by home_ownership; 




