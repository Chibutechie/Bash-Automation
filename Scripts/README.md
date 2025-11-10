# Bash Scripting, ETL, and SQL Automation

This project demonstrates hands-on skills in **Linux and Bash scripting**.
It automates the **Extract, Transform, and Load (ETL)** process using the *Annual Enterprise Survey 2023 (Provisional)* dataset from [stats.govt.nz](https://www.stats.govt.nz/).

---

## Features

**File Movement**

* Moves CSV and JSON files between directories.
* Organizes datasets for better workflow management.

**ETL Pipeline**

* **Extract** → Download CSV from an external URL using `curl`.
* **Transform** → Clean and restructure data by selecting and renaming specific columns.
* **Load** → Copy transformed data into a Gold directory as the final dataset.

**Script Automation**

* Creates necessary directories (`raw/`, `Transformed/`, `Gold/`).
* Ensures consistent data flow from ingestion to storage.

---

## Project Structure

```bash
Scripts/
│── .gitignore
│── .gitkeep
│── bash_script/
│   ├── destination_file/
│   ├── my_csv/
│   ├── json-and-csv.sh
│   ├── etl.sh
│
│── sql_script/
│
├── README.md
```

---

## Setup

### 1. Install Dependencies

You need a **Unix/Linux environment** (or Git Bash on Windows) with:

* `curl`
* `awk`

On Ubuntu/WSL2:

```bash
sudo apt update
sudo apt install curl -y
```

---

## Running Each Part

### 1. ETL Pipeline

```bash
bash bash_script/etl.sh
```

Workflow:

1. Extract → Downloads the raw dataset into `raw/`.
2. Transform → Selects specific columns (`year`, `value`, `units`, `variable_code`) and saves them in `Transformed/new_data.csv`.
3. Load → Copies the final file into `Gold/`.

### 2. File Movement

```bash
bash bash_script/json-and-csv.sh
```

* Moves all `.csv` and `.json` files from a source folder into `json_and_CSV/`.
* Useful for organizing or archiving datasets.

---

## Troubleshooting

* **`curl: command not found`** → Install curl (`sudo apt install curl -y`).
* **Output folders missing** → Script automatically creates them, but check folder permissions.
* **Permission denied** → Make scripts executable:

  ```bash
  chmod +x bash_script/*.sh
  ```
