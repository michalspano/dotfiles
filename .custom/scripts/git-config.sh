#!/bin/sh

# This script is used to switch between different git credentials

# Usage: git-config.sh <type>
# <type> can be one of the following:
#  - personal
#  - work
#  - uni

__usage() {
  echo "Usage: git-config <type>"
  exit 1
}

# ensure that the argument is passed
if [ $# -ne 1 ]; then __usage; fi

# logic to switch between different git credentials

# personal
if [ $1 = "personal" ]; then
  git config --local user.name "michalspano"
  git config --local user.email "michal.spano03@gmail.com"

# work
elif [ $1 = "work" ]; then
  git config --local user.name "spanoatctk"
  git config --local user.email "michal.spano@ctk.se"

# uni
elif [ $1 = "uni" ]; then
  git config --local user.name "spano"
  git config --local user.email "spano@student.chalmers.se"

# show current git credentials
elif [ $1 = "--show" ] || [ $1 = "-s" ]; then
  git config user.name; git config user.email
else __usage # if the argument is not valid
fi
