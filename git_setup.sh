#!/bin/bash

source ./colors.sh

read_first_name() {
    print_info "Type your first name: "
    read -r first_name
}

read_last_name() {
    print_info "Type your last name: "
    read -r last_name
}

read_email() {
    print_info "Type your email address: "
    read -r email
}

configure_git() {
    git config --global user.name "$first_name $last_name"
    git config --global user.email "$email"
    git config --global core.editor vim
}

main() {
    read_first_name
    read_last_name
    read_email
    configure_git

    print_info "Git configuration:"
    git config --list
    print_success "Awesome, all set."
}

main
