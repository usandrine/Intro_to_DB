# MySQLServer.py

import os
import re
import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (adjust credentials if necessary)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='your_password_here'  # 🔁 replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()

def check_task_1():
    print("🔍 Checking Task 1...")
    file_path = "MySQLServer.py"

    # Check if file exists
    if not os.path.exists(file_path):
        print("❌ MySQLServer.py file not found.")
        return

    with open(file_path, 'r') as f:
        content = f.read()

    # Check for exception handling
    if "try:" in content and "except" in content:
        print("✅ Contains code to handle exceptions.")
    else:
        print("❌ Missing exception handling (try/except).")

    # Check if SELECT or SHOW statements are not used
    if re.search(r"\bSELECT\b", content, re.IGNORECASE) or re.search(r"\bSHOW\b", content, re.IGNORECASE):
        print("❌ Should not use SELECT or SHOW statements.")
    else:
        print("✅ No SELECT or SHOW statements found.")