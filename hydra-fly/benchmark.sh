#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# run test
./run.sh 2>&1 | tee log.txt

# disk usage
du -bcs /var/lib/postgresql/14/main/

# parse results for json file
./parse.sh < log.txt
