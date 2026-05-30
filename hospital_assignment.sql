--ASSIGNMENT HOSPITAL
CREATE TABLE hospital(
     HospitalName VARCHAR(50),
	 Location VARCHAR(50),
	 Department VARCHAR(50),	
	 DoctorsCount INT,
	 PatientsCount	INT, 
	 AdmissionDate	DATE,
	 DischargeDate  DATE,
	 MedicalExpenses NUMERIC(10,2)
);

SELECT * FROM hospital;


COPY hospital(hospitalname,location, department,doctorscount, patientscount, admissiondate, dischargedate, medicalexpenses)
FROM 'C:\Program Files\CSV_Files\sql files\Hospital_Data.csv'
DELIMITER','
CSV HEADER;

-- 1-TOTAL NUMBER OF PATIENTS
SELECT SUM(patientscount) AS total_patients
from hospital;

-- 2-AVERAGE NUMBER OF DOCTORS PER HOSPITAL
SELECT hospitalname,
AVG(doctorscount) AS average_doctors
FROM hospital
GROUP BY hospitalname;

--3-TOP 3 DEPARTMENTS WITH HIGHEST NUMBER OF PATIENTS
SELECT department,
SUM(patientscount) AS total_patients
FROM hospital
GROUP BY department
ORDER BY total_patients  DESC
LIMIT 3;

-- 4-HOSPITAL WITH MAXIMUM MEDICAL EXPENSES
SELECT hospitalname,
SUM(medicalexpenses) AS total_expenses
FROM hospital
GROUP BY hospitalname
ORDER BY total_expenses DESC
LIMIT 1;

-- 5-DAILY AVERAGE MEDICAL EXPENSES 
SELECT hospitalname,
SUM(medicalexpenses)/ NULLIF(SUM(dischargedate-admissiondate),0)
AS avg_expense_per_day
FROM hospital
GROUP BY hospitalname;

--6-LONGEST HOSPITAL STAY
SELECT*,
dischargedate-admissiondate AS longest_stay
FROM hospital
ORDER BY longest_stay DESC
LIMIT 1;

--7-TOTAL PATIENTS TREATED PER CITY
SELECT location AS city,
SUM(patientscount) AS total_patients
FROM hospital
GROUP BY location;

--8-Average Length of Stay Per Department
SELECT department,
AVG(dischargedate-admissiondate) AS avg_stay_days
FROM hospital
GROUP BY department;

--9-Identify the Department with the Lowest Number of Patients
SELECT department,
SUM(patientscount) AS total_patients
FROM hospital
GROUP BY department
ORDER BY total_patients  ASC
LIMIT 1;


--10. Monthly Medical Expenses Report
SELECT DATE_TRUNC('month',admissiondate) AS month,
SUM(medicalexpenses) AS total_expenses
FROM hospital
GROUP BY month
ORDER BY month;
