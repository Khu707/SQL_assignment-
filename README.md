# 🏥 Hospital Data Analysis – SQL Project

## 📌 Overview
A SQL-based data analysis project on hospital management data.
Performed 10 analytical queries to extract insights on patient volume,
medical expenses, department performance, and hospital stay durations.

## 🛠️ Tools Used
- PostgreSQL

## 🗂️ Table Structure
**Hospital Table**

| Column | Type |
|---|---|
| HospitalName | VARCHAR |
| Location | VARCHAR |
| Department | VARCHAR |
| DoctorsCount | INT |
| PatientsCount | INT |
| AdmissionDate | DATE |
| DischargeDate | DATE |
| MedicalExpenses | NUMERIC |

## 🔍 Queries & Analysis Performed

1. Total number of patients across all hospitals
2. Average number of doctors per hospital
3. Top 3 departments with highest patient count
4. Hospital with maximum medical expenses
5. Daily average medical expenses per hospital
6. Longest hospital stay record
7. Total patients treated per city
8. Average length of stay per department
9. Department with lowest patient count
10. Monthly medical expenses report

## 💡 Key Highlights
- Used **DATE arithmetic** to calculate hospital stay durations
- Used **NULLIF** to handle division-by-zero safely
- Used **DATE_TRUNC** for monthly expense reporting
- Covers real-world healthcare KPIs like cost-per-day and dept efficiency

## 📁 Files
- `hospital_assignment.sql` – Table creation and all query scripts
- `Hospital_Data.csv` – Sample dataset used for analysis
