#!/bin/bash

echo "======================"
echo " Expense Tracker CLI "
echo "======================"

echo "1. Add Expense"
echo "2. View Expenses"
echo "3. Exit"

read -p "Choose an option: " choice

if [ "$choice" -eq 1 ]; then
  read -p "Enter expense amount: " amount
  read -p "Enter description: " desc
  echo "$(date), $amount, $desc" >> expenses.txt
  echo "Expense added successfully!"
elif [ "$choice" -eq 2 ]; then
  echo "---- Expenses ----"
  cat expenses.txt
else
  echo "Goodbye!"
fi
