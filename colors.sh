#!/bin/bash

# ANSI escape codes for colored output
readonly COLOR_SUCCESS="\033[0;32m"
readonly COLOR_FAILURE="\033[0;31m"
readonly COLOR_INFO="\033[0;36m"
readonly COLOR_RESET="\033[0m"

# Print a success message
print_success() {
    echo -e "${COLOR_SUCCESS}$* 👍${COLOR_RESET}"
}

# Print a failure message
print_failure() {
    echo -e "${COLOR_FAILURE}$* ❌${COLOR_RESET}"
}

# Print an informational message
print_info() {
    echo -e "${COLOR_INFO}$* ${COLOR_RESET}"
}
