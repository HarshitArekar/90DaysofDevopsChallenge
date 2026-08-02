#!/bin/bash

name="global"

local_a () {
        local local_name="local"
        echo "Inside func_a : $local_name"
}


regular () {
        regular_name="regular"
        echo "Inside func_a : $regular_name"

}


local_a
regular

echo "Outside func_a (local variable) : $local_name"
echo "Outside func_b (regular variable) : $regular_name"
echo "Global variable : $name"
