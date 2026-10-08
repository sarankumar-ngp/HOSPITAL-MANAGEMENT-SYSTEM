# 🏥 Hospital Patient Management System (Big Data & Dockerized Frontend)

A high-performance Big Data Hospital Patient Management and Analytics Dashboard powered by **Apache Hive 4.1.0**, **Apache Tez Engine**, and containerized with **Docker** & **Nginx Alpine**.

---

## 🚀 Quick Start with Docker

### Method 1: Using Docker Compose (Recommended)

1. Open PowerShell / Command Prompt in this project directory:
   ```bash
   docker compose up -d --build
   ```
2. Open your browser and go to:
   ```text
   http://localhost:8080
   ```

### Method 2: Standalone Docker Build & Run

1. **Build the Docker Image:**
   ```bash
   docker build -t hospital-management-system .
   ```

2. **Run the Docker Container:**
   ```bash
   docker run -d --name hospital-frontend -p 8080:80 hospital-management-system
   ```

3. **Check Container Status:**
   ```bash
   docker ps
   ```

4. **Stop the Container:**
   ```bash
   docker stop hospital-frontend
   docker rm hospital-frontend
   ```

---

## 🗄️ Apache Hive Big Data Architecture

- **Database:** `hospital_db`
- **Table:** `patients`
- **Execution Engine:** Apache Tez
- **Metastore Port:** `9083`
- **Beeline CLI Port:** `10000`

### Example HiveQL Queries:
```sql
-- 1. Total Patients and Aggregate Revenue
SELECT COUNT(*) AS total_patients, SUM(bill_amount) AS total_bill FROM patients;

-- 2. Doctor-Wise Revenue Breakdown
SELECT doctor, COUNT(*) AS patients, SUM(bill_amount) AS revenue 
FROM patients 
GROUP BY doctor 
ORDER BY revenue DESC;

-- 3. Stay Duration Calculation
SELECT patient_name, DATEDIFF(discharge_date, admission_date) AS stay_days 
FROM patients;
```

---

## ✨ Features Included
- 🐳 **Full Docker Setup** (`Dockerfile`, `docker-compose.yml`, `nginx.conf`, `.dockerignore`)
- 📊 **Dynamic Live KPI Cards** (Auto calculates Patients, Revenue, Avg Bill, Stay)
- 🧑‍⚕️ **Complete Interactive CRUD** (Add new patient, Edit, Delete, Search & Filter)
- 📈 **Interactive Visual Analytics Charts** (Doctor Revenue & Blood Group Breakdown with Chart.js)
- 💻 **HiveQL Interactive Query Runner** (Beeline query simulator with pre-loaded queries)
- 📥 **CSV Data Export**
