#!/bin/bash

set -euo pipefail

echo "Strict mode enabled"

echo "$USERNAME"

echo "This line will not execute"

false

echo "This line will also not execute"

cat missing.txt | grep hello

echo "End of script"
