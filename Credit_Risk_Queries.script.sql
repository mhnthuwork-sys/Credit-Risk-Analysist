-- ===========================================================
-- CREDIT RISK ANALYSIS PROJECT
-- Author: Bhavana Venkatesha Murthy
-- Dataset: Credit Risk (Kaggle)
-- Purpose: SQL Analysis for 10 Business Questions
-- ===========================================================

-- 1. Total loans and overall default rate
SELECT
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = '1' THEN 1 ELSE 0 END) AS total_defaults,
    ROUND(SUM(loan_status='1') * 100.0 / COUNT(*), 2) AS default_rate_pct
FROM credit_clean_text;


-- 2. Default rate by loan grade
SELECT 
    loan_grade,
    COUNT(*) AS total_loans,
    SUM(loan_status='1') AS defaults,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct,
    ROUND(AVG(CAST(NULLIF(loan_int_rate,'') AS DECIMAL(5,2))), 2) AS avg_interest_rate,
    ROUND(AVG(CAST(NULLIF(loan_amnt,'') AS DECIMAL(12,2))), 2) AS avg_loan_amount
FROM credit_clean_text
GROUP BY loan_grade
ORDER BY default_rate_pct DESC;


-- 3. Default rate by home ownership
SELECT 
    person_home_ownership,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct,
    ROUND(AVG(CAST(NULLIF(person_income,'') AS DECIMAL(12,2))), 2) AS avg_income
FROM credit_clean_text
GROUP BY person_home_ownership
ORDER BY default_rate_pct DESC;

-- 4. Default rate by employment length
SELECT 
    CAST(NULLIF(person_emp_length,'') AS UNSIGNED) AS emp_years,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct
FROM credit_clean_text
WHERE person_emp_length <> ''
GROUP BY emp_years
ORDER BY emp_years;

-- 5. Loan intent performance (purpose of loan) 
SELECT 
    loan_intent,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(NULLIF(loan_amnt,'') AS DECIMAL(12,2))), 2) AS avg_loan_amount,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct
FROM credit_clean_text
GROUP BY loan_intent
ORDER BY total_loans DESC;

-- 6. Income vs defaults
SELECT 
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(NULLIF(person_income,'') AS DECIMAL(12,2))), 2) AS avg_income,
    ROUND(AVG(CAST(NULLIF(loan_percent_income,'') AS DECIMAL(6,2))), 2) AS avg_loan_pct_income
FROM credit_clean_text
GROUP BY loan_status;

-- 7. Top 10 risky segments (home ownership + grade)
SELECT 
    person_home_ownership,
    loan_grade,
    COUNT(*) AS total_loans,
    SUM(loan_status='1') AS defaults,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct
FROM credit_clean_text
GROUP BY person_home_ownership, loan_grade
HAVING COUNT(*) >= 50
ORDER BY default_rate_pct DESC
LIMIT 10;

-- 8.Loan amount distribution by grade 
SELECT 
    loan_grade,
    ROUND(MIN(CAST(NULLIF(loan_amnt,'') AS DECIMAL(12,2))),2) AS min_loan,
    ROUND(AVG(CAST(NULLIF(loan_amnt,'') AS DECIMAL(12,2))),2) AS avg_loan,
    ROUND(MAX(CAST(NULLIF(loan_amnt,'') AS DECIMAL(12,2))),2) AS max_loan
FROM credit_clean_text
WHERE loan_amnt <> ''
GROUP BY loan_grade;


-- 9. Credit history length vs default probability
SELECT 
    CAST(NULLIF(cb_person_cred_hist_length,'') AS UNSIGNED) AS credit_history_length,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_status='1')*100.0 / COUNT(*), 2) AS default_rate_pct
FROM credit_clean_text
WHERE cb_person_cred_hist_length <> ''
GROUP BY credit_history_length
ORDER BY credit_history_length;


-- 10. Average interest rate by loan status
SELECT 
    loan_status,
    ROUND(AVG(CAST(NULLIF(loan_int_rate,'') AS DECIMAL(5,2))), 2) AS avg_interest_rate,
    COUNT(*) AS total_loans
FROM credit_clean_text
GROUP BY loan_status;





























