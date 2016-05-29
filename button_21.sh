#!/bin/bash
gpio -g mode 21 input;
while [ gpio -g read 21 == 0]; 
do
done
echo "------";
