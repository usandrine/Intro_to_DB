-- task_6.sql
USE alx_book_store;

INSERT INTO Customers (customer_id, customer_name, email, address) VALUES
(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');
def check_task_6():
    print("\n🔍 Checking Task 6...")
    file_path = "task_6.sql"

    # Check if file exists
    if not os.path.exists(file_path):
        print("❌ task_6.sql file not found.")
        return

    # Check if file not empty
    if os.path.getsize(file_path) == 0:
        print("❌ task_6.sql file is empty.")
        return

    with open(file_path, 'r') as f:
        content = f.read()

    # Check for insertions of customers with IDs 2, 3, 4
    for cid in [2, 3, 4]:
        if re.search(fr"customer_id\s*=\s*{cid}", content) or re.search(fr"\(\s*{cid}\s*,", content):
            print(f"✅ Customer with customer_id={cid} inserted.")
        else:
            print(f"❌ Missing insertion for customer_id={cid}.")


def main():
    print("=============================================")
    print("📘 ALX Book Store — SQL Task Validation Tool")
    print("=============================================")

    try:
        check_task_1()
        check_task_3()
        check_task_4()
        check_task_5()
        check_task_6()
    except Exception as e:
        print(f"⚠️ Error while running checks: {e}")

    print("\n✅ Validation completed.")


if __name__ == "__main__":
    main()