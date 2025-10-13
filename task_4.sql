-- task_4.sql
USE alx_book_store;
SHOW CREATE TABLE Books;
def check_task_4():
    print("\n🔍 Checking Task 4...")
    file_path = "task_4.sql"

    # Check if file exists
    if not os.path.exists(file_path):
        print("❌ task_4.sql file not found.")
        return

    # Check if file not empty
    if os.path.getsize(file_path) == 0:
        print("❌ task_4.sql file is empty.")
        return

    with open(file_path, 'r') as f:
        content = f.read()

    # Check for description of books table
    if re.search(r"DESCRIBE\s+books", content, re.IGNORECASE):
        print("✅ Contains description of the table 'books'.")
    else:
        print("❌ Missing description of 'books' table.")

    # Check that ANALYZE keyword is not used
    if re.search(r"\bANALYZE\b", content, re.IGNORECASE):
        print("❌ 'ANALYZE' keyword should not be used.")
    else:
        print("✅ 'ANALYZE' keyword not used.")