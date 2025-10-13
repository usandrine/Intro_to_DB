-- task_5.sql
USE alx_book_store;

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
def check_task_5():
    print("\n🔍 Checking Task 5...")
    file_path = "task_5.sql"

    # Check if file exists
    if not os.path.exists(file_path):
        print("❌ task_5.sql file not found.")
        return

    # Check if file not empty
    if os.path.getsize(file_path) == 0:
        print("❌ task_5.sql file is empty.")
        return

    with open(file_path, 'r') as f:
        content = f.read()

    # Check for insertion into customer table
    if re.search(r"INSERT\s+INTO\s+customers", content, re.IGNORECASE):
        print("✅ Contains insertion into customers table.")
    else:
        print("❌ No insertion into customers table found.")

    # Check for correct values in customers table
    expected_values = ["VALUES", "(", ")"]
    if all(v.lower() in content.lower() for v in expected_values):
        print("✅ Insertion statement structure is correct.")
    else:
        print("❌ Incorrect insertion values syntax in customers table.")