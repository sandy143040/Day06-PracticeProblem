#!/bin/bash

echo "Enter temperature value:"
read temp_value

echo "Select conversion type (1 for degC to degF or 2 for degF to degC):"
read conversion_type

case $conversion_type in
    1)
        if [ $temp_value -lt 0 ] || [ $temp_value -gt 100 ]; then
            echo "Invalid temperature value for degC, please enter a value between 0 and 100"
        else
            degF=$(echo "scale=2; ($temp_value * 9/5) + 32" | bc)
            echo "$temp_value degC is $degF degF"
        fi
        ;;
    2)
        if [ $temp_value -lt 32 ] || [ $temp_value -gt 212 ]; then
            echo "Invalid temperature value for degF, please enter a value between 32 and 212"
        else
            degC=$(echo "scale=2; ($temp_value - 32) * 5/9" | bc)
            echo "$temp_value degF is $degC degC"
        fi
        ;;
    *)
        echo "Invalid conversion type selected, please enter 1 or 2"
        ;;
esac
