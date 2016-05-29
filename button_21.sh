#!/bin/bash
gpio -g mode 21 input;
gpio -g mode 19 output;
gpio -g mode 26 output;
gpio -g write 19 1;
gpio -g write 26 0;
while [ true ];
do
 val=`gpio -g read 21`;
 if [ $val -eq 1 ]; then
  gpio -g write 19 0;
  echo "Power Off";
  echo "Good Bye!";
  val=`sudo poweroff`;
 fi;
 sleep .41;
done
echo "------";
