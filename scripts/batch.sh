#!/bin/bash

script="./main.sh"
create_folders="./smaller_scripts/create_folders.sh"

echo "Running script 1 = create_folders.sh"
bash "$create_folders"

nohup "$script" A B C D E F G H I J 0 &> "./logs/batch_A_to_J.log" &

start=1
end=500
step=10

for ((i=$start; i<=$end; i+=$step)); do
  batch_start=$i
  batch_end=$((i + step - 1))
  
  if ((batch_end > end)); then
    batch_end=$end
  fi

  batch=$(seq $batch_start $batch_end | tr '\n' ' ')

  echo "Using batch: $batch"
  nohup "$script" $batch &> "./logs/batch_${batch_start}_to_${batch_end}.log" &
done
