# ETL Pipeline Patient Data Analysis
End to end ELT pipeline from a data source to any data warehouse/data source using Python, SQL to answer - Find the patient(s) with the most generated minutes?

## Overview
This project showcases an end-to-end ELT (Extract, Load, Transform) pipeline implemented in Python and SQL. The goal is to answer the question: "Find the patient(s) with the most generated minutes." The pipeline extracts data from CSV files, manipulates it using SQL, and generates an output CSV file containing patient information with the highest total minutes.

## Dataset
The following datasets are provided:
- `steps.csv`
  - Columns: ID, External_id, Steps, Submission_time, Updated_at
- `exercises.csv`
  - Columns: ID, External_id, minutes, completed_at, Updated_at
- `patients.csv`
  - Columns: Patient_id, First_name, Last_name, Country

## Business Rules and Assumptions
- Steps are converted to minutes using the formula: `minutes = steps * 0.002`
- A patient can submit steps multiple times and complete multiple exercises.
- Python is used for data extraction and injection, while SQL is used for data manipulation.
- Output may contain multiple rows if multiple patients have the same highest total minutes.

## Implementation Details
- **Python:** Used for data extraction (Pandas library) and loading.
- **SQL:** Used for data manipulation (SQLite database).
- **Git:** Version control system for project management.
- **Technologies:** Docker, cloud services, AirFlow, DBT were not used in this solution.

## Setup Instructions
1. Clone the repository: `git clone <repository_url>`
3. Run the Python script: `python src/main.py`
4. Check the output CSV file in the `output/` directory.

## Conclusion
This project demonstrates a simple yet effective ELT pipeline using Python and SQL to analyze patient data and identify those with the highest total minutes generated.
