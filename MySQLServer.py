#!/usr/bin/env python3
"""
Script to create alx_book_store database in MySQL server.
"""

import mysql.connector

def create_database():
    """
    Create the alx_book_store database if it doesn't exist.
    """
    try:
        # Establish connection to MySQL server
        connection = mysql.connector.connect(
            host="localhost",
            user="root",  # Change this to your MySQL username
            password=""   # Change this to your MySQL password
        )
        
        if connection.is_connected():
            # Create a cursor object
            cursor = connection.cursor()
            
            # Create database if it doesn't exist
            # Using IF NOT EXISTS to prevent failure if database already exists
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)
            
            # Print success message
            print("Database 'alx_book_store' created successfully!")
            
            # Close cursor and connection
            cursor.close()
            connection.close()
            
    except mysql.connector.Error as err:
        # Handle MySQL connection errors
        print(f"Error: {err}")
        
    except Exception as e:
        # Handle any other exceptions
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    create_database()