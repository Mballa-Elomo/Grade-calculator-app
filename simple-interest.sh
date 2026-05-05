#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input

echo "Welcome to the Simple Interest Calculator"
echo "=========================================="

# Get user input
echo "Enter the Principal amount:"
read principal

echo "Enter the Rate of Interest (in %):"
read rate

echo "Enter the Time Period (in years):"
read time

# Calculate simple interest
# Formula: SI = (Principal * Rate * Time) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "=========================================="
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total"
echo "=========================================="
