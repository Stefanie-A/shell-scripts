#!/bin/bash

#this bash script searches for a user, if not found it creates one.

echo "What is your username?"
read name

if grep -q ^$name /etc/passwd; then
    echo "User found!"
else;
    echo "user not found"
    sudo adduser --system $name
    sudo usermod -aG sudo $name #adding administrative privileges.
    echo "Creating new user..."
fi