# Simple ATM Program

# Ask user details
first_name = input("Enter your first name: ")
last_name = input("Enter your last name: ")

balance = 0

while True:
    print("\nWelcome", first_name, last_name)
    print("Your current balance is:", balance)
    
    print("""
Choose an option:
1. Deposit
2. Withdraw
3. Exit
""")
    
    choice = input("Enter your choice: ")

    # Deposit
    if choice == "1":
        amount = float(input("Enter deposit amount: "))

        if amount < 0:
            print("Amount is invalid, try again.")
            continue
        if amount > 1000:
            print("Deposit limit exceeded. Maximum deposit is 1000.")
            continue

        balance += amount
        print("Deposit successful! New balance:", balance)

    # Withdraw
    elif choice == "2":
        amount = float(input("Enter withdraw amount: "))

        if amount < 0:
            print("Amount is invalid, try again.")
            continue
        if amount > 500:
            print("Withdraw limit exceeded. Maximum withdraw is 500.")
            continue
        if balance < amount:
            print("You don’t have necessary funds to withdraw.")
            continue

        balance -= amount
        print("Withdraw successful! New balance:", balance)

    # Exit the ATM
    elif choice == "3":
        print("Thank you for using the ATM. Goodbye!")
        break

    # Invalid menu input
    else:
        print("Invalid choice. Please select again.")
