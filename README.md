🧮 Basic Calculator using Shell Script

A simple menu-driven calculator built using Bash shell scripting. This project performs basic arithmetic operations and runs in a Linux terminal environment.

---

📌 Features

- Addition
- Subtraction
- Multiplication
- Division (with zero-check)
- Continuous execution using loop
- User-friendly menu interface

---

🛠️ Technologies Used

- Bash Shell Scripting
- Ubuntu Linux
- Terminal

---

🚀 How to Run

1. Open Terminal in Linux (Ubuntu)

2. Create a file:
   nano calculator.sh

3. Paste the code and save it

4. Give execute permission:
   chmod +x calculator.sh

5. Run the script:
   ./calculator.sh

---

📋 Working

- The program asks the user to enter two numbers
- Then it displays a menu of operations
- Based on user choice, the selected operation is performed
- The result is displayed on the screen
- The program continues until the user selects Exit

---

⚠️ Special Case Handling

- Division by zero is handled properly
- If user enters 0 as divisor, an error message is shown

---

💻 Source Code

#!/bin/bash

while true
do
    echo "=============================="
    echo "      BASIC CALCULATOR"
    echo "=============================="

    echo "Enter first number:"
    read num1

    echo "Enter second number:"
    read num2

    echo "Select operation:"
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    echo "5) Exit"
    read choice

    case $choice in
        1)
            result=$((num1 + num2))
            echo "Result: $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $result"
            ;;
        4)
            if [ $num2 -eq 0 ]; then
                echo "Error: Cannot divide by zero!"
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Result: $result"
            fi
            ;;
        5)
            echo "Exiting Calculator..."
            break
            ;;
        *)
            echo "Invalid choice! Try again."
            ;;
    esac

    echo ""
    echo "Press Enter to continue..."
    read
done

---

📚 Learning Outcomes

- Understanding of shell scripting basics
- Use of loops and conditional statements
- Handling user input in Linux
- Writing menu-driven programs

---

📌 Conclusion

This project demonstrates how basic programming logic can be implemented using shell scripting in Linux. It is useful for beginners to understand scripting concepts in a practical way.

---

👨‍💻 Author

Mukul Dev Sankhla
BCA-B1

---
