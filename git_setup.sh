#!/bin/bash

source ./colors.sh

echo_input "Type your first name:"
read -r first_name

echo_input "Type your last name:"
read -r last_name

echo_input "Type your email address:"
read -r email

git config --global user.name "$first_name $last_name"
git config --global user.email "$email"
git config --global core.editor vim

echo_info "Git configuration:"

git config --list

echo_success "Awesome, all set."
