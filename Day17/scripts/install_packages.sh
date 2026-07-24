#!/bin/bash

if [ "$EUID" -ne 0 ]
then
    echo "Run this script as root."
    exit 1
fi

packages=("nginx" "curl" "wget")

for pkg in "${packages[@]}"
do
    if dpkg -s "$pkg" >/dev/null 2>&1
    then
        echo "$pkg is already installed."
    else
        echo "Installing $pkg..."
        apt update
        apt install -y "$pkg"
    fi
done
