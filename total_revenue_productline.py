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
SELECT pl.line_name, SUM(od.quantity * p.MSRP) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_code = p.product_code
JOIN ProductLines pl ON p.productline_id = pl.productline_id
GROUP BY pl.line_name
ORDER BY total_revenue DESC;
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

