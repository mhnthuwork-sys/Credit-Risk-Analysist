# Credit Risk Analysis | Financial Analytics & Business Intelligence

## 📌 Project Overview

This project dives into credit risk patterns to help financial institutions reduce loan defaults and make smarter lending decisions. Leveraging **Excel**, **Power BI**, and **SQL**, borrower data was processed, explored, and visualized to segment customers by risk level — ultimately informing credit approval strategies that contributed to a projected 

---

## 🏦 The Business Challenge

Lenders constantly walk the tightrope between growth and risk. This project tackles that challenge head-on: catching high-risk borrowers before problems escalate, and translating raw financial data into clear, actionable guidance.

**Core questions this project answers:**
- Which customer segments carry the highest likelihood of default?
- What financial signals are the strongest predictors of credit risk?
- How can portfolio health be tracked continuously through interactive dashboards?

> **Analyst mindset:** This work mirrors real-world banking practice — evaluating borrower profiles, anticipating defaults, and shaping credit policy through evidence-based analysis.

---

## 🧠 Approach & Methodology

| Phase | What Was Done | Tools |
|---|---|---|
| Data Preparation | Removed duplicates, filled in gaps, standardized credit score fields | Excel, SQL |
| Exploratory Analysis | Surfaced patterns across income, loan size, and repayment history | SQL |
| Dashboard Build | Designed interactive views for risk segmentation and trend monitoring | Power BI |
| Risk Classification | Defined thresholds separating low, medium, and high-risk borrowers | Excel, Power Query |

---

## 🛠️ Technical Skills Applied

- **Excel** — Advanced formulas, Power Query, data validation, scenario modeling
- **Power BI** — DAX measures, KPI tracking, visual storytelling, trend analysis
- **SQL** — Data extraction, joins, aggregations, cleaning pipelines
- **Analytical Thinking** — Root cause analysis, KPI alignment, stakeholder-oriented communication
- **AI-Assisted Workflow** — Used Claude to accelerate insight synthesis and stress-test hypotheses

---

## 📊 Key Insights

- **Overall default rate: 21.82%** (7,108 of 32,581 loans)
- Default rate rises sharply with loan grade — from **9.96% at Grade A** to **98.44% at Grade G**, with the steepest jump occurring between **Grade C (20.73%)** and **Grade D (59.05%)**
- Renters show significantly higher default risk (**31.57%**) than homeowners with mortgages (12.57%) or full ownership (7.47%)
- Combined risk segments compound sharply: renters with Grade F loans default at **77.95%**, nearly 4x the portfolio average
- Borrowers who defaulted had lower average income (**$49,126** vs $70,804) and a higher loan-to-income ratio (**24.7%** vs 14.9%)
- Interest rate spread between defaulted and non-defaulted loans (13.06% vs 10.44%) is modest relative to the risk gap across grades, suggesting current pricing may under-differentiate risk at lower grades

## 💡 Recommendations

1. Tighten underwriting criteria for combined high-risk segments (e.g., RENT + Grade D–G)
2. Reassess risk-based pricing to better reflect the steep default-rate gap between mid and low grades
3. Prioritize loan-to-income ratio as an early screening signal alongside grade
4. Monitor portfolio mix by grade and home ownership monthly to track risk concentration

---

## 🚀 Roadmap

- [ ] Build a **Logistic Regression model** for predictive default scoring
- [ ] Connect Power BI directly to **SQL Server** for live data refresh
- [ ] Layer in **macroeconomic variables** (inflation, unemployment) for richer context
- [ ] Automate **executive summary email reports** on a weekly cadence

---

## ⚠️ Limitations

- Dataset scope is narrow — behavioral and transaction-level features are absent
- Historical data may not capture current borrower dynamics
- Model accuracy will vary depending on portfolio size and data recency

---

## 💡 What This Project Demonstrates

A complete **data-to-decision pipeline** for credit risk:

It combines hands-on technical execution (Excel, SQL, Power BI) with the strategic lens that turns numbers into lending policy — the kind of thinking that drives real value in financial institutions.

## 📌 Power Bi dashboard
![Credit Risk Dashboard](credit%20risk%20visualization-images-0.jpg)
