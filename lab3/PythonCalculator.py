def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multipl(a, b):
    return a * b

def divide(a, b):
    if b == 0:
        return "Error! Division by zero."
    return a / b

def even_odd(num):
    return "Even" if num % 2 == 0 else "Odd"

def percentage(a, b):
    if b == 0:
        return "Error! Division by zero."
    return (a / b) * 100

def calculator():
    while True:
        print("\n--- Feature-Rich Calculator ---")
        print("1. Addition")
        print("2. Subtraction")
        print("3. Multipication")
        print("4. Division")
        print("5. Check Even/Odd")
        print("6. Percentage")
        print("7. Exit")

        choice = input("Enter choice (1-7): ")

        if choice == '7':
            print("Exiting Calculator. Goodbye!")
            break

        # Even/Odd only needs one number
        if choice == '5':
            num = int(input("Enter a number: "))
            print(f"{num} is {even_odd(num)}")

        # Percentage needs two numbers but treated diffrently
        elif choice == '6':
            a = float(input("Enter first number (part): "))
            b = float(input("Enter second number (whole): "))
            print(f"Percentage: {percentage(a, b)}%")

            # Other operations need two numbers
        else:
            a = float(input("Enter first number: "))
            b = float(input("Enter second number: "))

            if choice == '1':
                print("Result:", add(a, b))
            elif choice == '2':
                print("Result:", subtract(a, b))
            elif choice == '3':
                print("Result:", multiply(a, b))
            elif choice == '4':
                print("Result:", divide(a, b))
            else:
                print("Invalid choice. Please try again.")
if __name__ == "__main__":
    calculator()           
