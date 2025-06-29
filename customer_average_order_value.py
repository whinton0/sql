import pandas as pd
from sqlalchemy import create_engine

# MySQL database credentials
user = 'root'
password = '##Mybr0k3r'  # Add your root password if needed
host = '127.0.0.1'
port = '3306'
database = 'retail_insights_db'

# Create connection string using PyMySQL
connection_string = f"mysql+pymysql://{user}:{password}@{host}:{port}/{database}"
engine = create_engine(connection_string)

# SQL query
query = """
SELECT c.name AS customer_name, ROUND(AVG(p.amount), 2) AS avg_order_value
FROM Customers c
JOIN Payments p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.name
ORDER BY avg_order_value DESC
LIMIT 10;
"""

# Run query and output
try:
    df = pd.read_sql(query, engine)
    print("Query Results:\n")
    print(df)
    df.to_csv("monthlyrevenuetrend.csv", index=False)
    print("\nSaved results to 'monthlyrevenuetrend.csv'")
except Exception as e:
    print(f"Error: {e}")

