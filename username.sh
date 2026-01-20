#!/bin/bash

echo "Enter a username:"

while read -r username; do
    if echo "$username" | grep -E '^[a-z][a-z0-9_]{2,11}$' > /dev/null 2>&1; then
        echo "Valid username: $username"
    else
        echo "Invalid username: $username"
    fi
    echo "Enter a username:"
done
