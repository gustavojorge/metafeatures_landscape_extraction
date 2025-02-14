#!/bin/bash

r=("0.05" "0.1" "0.25" "0.5" "1.0")
l=("5" "10" "25" "50" "100")

instance="${1:-A}"

for L in "${l[@]}"; do
    echo "Executing adaptative_walk_decomposition with: $instance $L"

    log_file="../dataset/$instance/decomposition_based/adaptative_walk/l${L}/log.txt"
        
    {
        echo "============================== LOG =============================="

        { time ./exe/adaptative_walk_decomposition "$instance" "$L"; } 2>&1

        echo "================================================================="
    } > "$log_file" 2>&1
done
