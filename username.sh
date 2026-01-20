#!/bin/bash

# Username Validation Script
# This script prompts the user for a username and validates it
# Valid usernames:
#   - Must start with a lowercase letter
#   - Can only contain lowercase letters, digits, and underscores
#   - Must be between 3 and 12 characters in length (inclusive)

echo "Enter a username (or 'quit' to exit):"

while read -r username; do
    # Check if user wants to quit
    if [[ "$username" == "quit" ]]; then
        echo "Goodbye!"
        exit 0
    fi
    
    # Validate username using grep with extended regex
    # Valid username: starts with lowercase letter, followed by 2-11 lowercase letters/digits/underscores
    # Total length: 3-12 characters
    if echo "$username" | grep -E '^[a-z][a-z0-9_]{2,11}$' > /dev/null 2>&1; then
        echo "Valid username: $username"
    else
        echo "Invalid username: $username"
    fi
    
    echo "Enter a username (or 'quit' to exit):"
done

