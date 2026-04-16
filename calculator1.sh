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
