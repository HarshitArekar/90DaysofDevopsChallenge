#!/bin/bash

greet () {
 echo "hiii $1"
}

add () {
        echo " sum = $(($1+$2))"
}

greet "Harshit"
add 10 40
