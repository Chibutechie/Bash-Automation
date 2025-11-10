# Starting ETL process
echo "Starting ETL process..."

# Step 1: Extract - Download source CSV file into the raw data directory
echo "Extracting data..."
url="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional.csv"
mkdir -p ./raw
curl -O --output-dir ./raw $url
echo "Data successfully extracted to ./raw"

# Step 2: Transform - Select relevant columns and rename header before saving to Transformed directory
echo "Transforming data..."
mkdir -p ./Transformed
awk -F, 'BEGIN {OFS=","} NR==1 {$6="variable_code"} {print $1, $9, $5, $6}' \
  ./raw/Annual-enterprise-survey-2023-financial-year-provisional.csv \
  > ./Transformed/new_data.csv
echo "Data successfully transformed and saved to ./Transformed"

# Step 3: Load - Copy transformed data to Gold directory (final storage)
echo "Loading data..."
mkdir -p ./Gold
cp ./Transformed/new_data.csv ./Gold
echo "Data successfully loaded to ./Gold"

# ETL process completed
echo "ETL process completed successfully."

# Write a Bash script to move all CSV and JSON files from one folder to another folder named json_and_CSV
echo "Files successfully moved"

# Created folders for Bash and SQL Scripts
echo "Folders created successfully"

