-- task_3.sql
SHOW TABLES;
def check_task_3():
    print("\n🔍 Checking Task 3...")
    file_path = "task_3.sql"

    if not os.path.exists(file_path):
        print("❌ task_3.sql file not found.")
        return

    with open(file_path, 'r') as f:
        content = f.read()

    # Check for correct database name
    if "USE alx_book_store;" in content or re.search(r"USE\s+alx_book_store", content, re.IGNORECASE):
        print("✅ Correct database (alx_book_store) used.")
    else:
        print("❌ Incorrect or missing database name (should be alx_book_store).")