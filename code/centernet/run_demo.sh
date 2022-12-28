#!/bin/bash
for ((i=0;i<=9;i++))
do
  file_name="/home/robotlab/Desktop/testing-data/0000${i}.png"
  python3 demo.py --arch res2net50 --gpus 0 --load_model /home/robotlab/Desktop/res2net50.pth --image "$file_name"
 
done

for ((i=10;i<=49;i++))
do
  file_name="/home/robotlab/Desktop/testing-data/000${i}.png"
  python3 demo.py --arch res2net50 --gpus 0 --load_model /home/robotlab/Desktop/res2net50.pth --image "$file_name"
 
done


