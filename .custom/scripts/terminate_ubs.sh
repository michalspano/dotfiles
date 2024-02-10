#!/bin/sh

# this script is used to terminate the Ubersicht app
# it relies in the pidof command to find the process id

PROCESS_NAME="Übersicht" # strictly spelled with umlaut (Ü)

# customs
CYAN='\033[0;36m'; PURPLE='\033[0;35m'; NC='\033[0m' # No Color
EMOJI="⋋_⋌"

PIDOF_FOUND () {
  if ! command -v pidof &> /dev/null; then
      printf "\`pidof\` command could not be found.\n"
      printf "\tDocs: http://www.nightproductions.net/cli.htm#pidof\n"
      exit 1
  fi
}

PIDOF_FOUND # ensure that the command is found

PIDFOF=`which pidof`
PID=`pidof "$PROCESS_NAME"`

# ensure that the process is running
if [ -z "$PID" ]; then printf "Process \`%s\` not found.\n" "$PROCESS_NAME"; exit 1; fi

kill -9 "$PID" # kill the process

# flag to show the process is killed with a cutom formatting
if ! [ "$1" = "--no-emoji" ] && ! [ "$1" = "-n" ]; then
  printf "${PURPLE}${EMOJI}${NC}  |  ${CYAN}Killed process \`${PROCESS_NAME}\`.${NC}\n"
fi
