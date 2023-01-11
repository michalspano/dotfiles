#!/bin/bash

RANGE=60 # the default time value
CYAN="\033[1;36m"; RESET="\033[0m" # colors

# show usage
__usage() {
  if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo "Usage: stopwatch [time in seconds]"; exit 0
  fi
}

# no range given - use the default value
__validate() { 
  if ! [ -z $1 ]; then RANGE=$1; fi 
}

# instantiate the stopwatch
__stopwatch() { 
  echo -ne "$CYAN"
  for i in `seq $RANGE -1 1`; do
    echo -ne "\r$i "; sleep 1 # display the time
  done
  echo -e "\rDone!$RESET"
}

__usage $1
__validate $1
__stopwatch
