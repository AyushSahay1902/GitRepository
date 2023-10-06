#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  # Calculate the simple interest
  interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

  echo "Principal amount: \$${principal}"
  echo "Rate of interest: ${rate}%"
  echo "Time (in years): ${time}"
  echo "Simple Interest: \$${interest}"
}

# Main script starts here
clear

echo "Welcome to the Simple Interest Calculator"
echo "---------------------------------------"

# Read principal amount
read -p "Enter the principal amount (in dollars): " principal

# Read rate of interest
read -p "Enter the rate of interest (in percentage): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time

echo "---------------------------------------"
echo "Thank you for using the Simple Interest Calculator!"
