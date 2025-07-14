# Anti-Money Laundering (AML) Project

Graph-based Anomaly Detection using Python, PostgreSQL, and Power BI to identify suspicious transactions and accounts for Anti-Money Laundering (AML).

NOTE- (cleaned_banking_data.csv` DATA SET),is too large for GitHub.  
If you'd like the full dataset, feel free to reach out via LinkedIn or email.

# Overview

This project analyzes a banking transaction dataset with over 1.4 million entries to detect suspicious accounts using network analysis and anomaly detection techniques.
Key tools used:

* Python- for data cleaning and modeling
* PostgreSQL- for database operations
* NetworkX- for graph creation
* Isolation Forest- for anomaly detection
* Power BI- for interactive dashboard and visualization

# Folder Structure
anti-money-laundering-aml-project/
├── data/
│   └── cleaned_banking_data.csv         # Cleaned input data
├── output/
│   └── suspicious_accounts.csv          # Accounts flagged as suspicious
│   └── all_accounts.csv                 # All accounts with behavior features
├── visuals/
│   └── aml_dashboard.png                # Power BI dashboard screenshot
├── run_model.py                         # Anomaly detection & graph analysis
├── clean_data.py                        # Script for cleaning raw data
├── README.md                            # This file
├── requirements.txt                     # Python dependencies

## 🚀 How to Run

1. Clone the repo:

```bash
git clone https://github.com/yourusername/anti-money-laundering-aml-project.git
```

2. Install requirements:

```bash
pip install -r requirements.txt
```

3. Load your PostgreSQL DB (if not already) and update the credentials in `clean_data.py`
4. Run scripts:

```bash
python clean_data.py
python run_model.py
```

---

## 📈 Dashboard Insights (Power BI)

* KPIs- Total Accounts, Transactions, Suspicion %, Average Score
* Donut Charts- Risk classification, Transaction types
* Line Chart- Transaction trend across types
* Treemap- Deeper breakdown by amount
* Table- Type-wise fraud breakdown
  
# Techniques Used

* Graph modeling using NetworkX
* Z-score normalization (StandardScaler)
* Isolation Forest anomaly detection
* Behavioral feature extraction: money sent, received, degree

