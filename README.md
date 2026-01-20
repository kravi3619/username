# README for Username Validation Script

## Author Information
- **Name:** Kavin Ravi
- **Course:** CPSC 298 - Unix
- **Assignment:** Username Validation
- **Date:** January 20, 2026

## Program Description
This script validates usernames according to standard Unix username conventions. It prompts the user for a username, checks whether it meets the validation criteria using a regular expression, and reports whether the username is valid or invalid. The script runs in a loop, allowing multiple usernames to be checked until the user types 'quit' to exit.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The script uses a `while` loop with `read` to continuously accept user input until EOF or the user types 'quit'. For each input, the `grep` command with the `-E` flag enables extended regular expressions to match the username against the validation pattern. When the username matches, grep returns exit code 0 (success), which the `if` statement uses to determine validity. The redirect `> /dev/null 2>&1` suppresses all output from grep since we only care about the exit code, not the matched text.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
Testing was performed using the `username-input` file which contains various test cases:

**Valid usernames tested:**
- `jsmith` 
- `jsmith_2023` 
- `admin` 
- `user123456` 

**Invalid usernames and reasons:**
- `js` 
- `jsmith12345678` 
- `jSmith` 
- `123abc` 
- `test-user` 

## Resources
- Course materials (mainly pdfs)
- StackOverflow for git config changes


## License
This project is part of coursework for Chapman University and is intended for educational purposes.
