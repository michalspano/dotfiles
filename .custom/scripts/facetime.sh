#!/bin/sh

: '
  Automated Facetime calling for OS X
  - call a number from the CLI with facetime.sh <number>
 '

TARGET="$1"

__parse_args() {
  if [ -z "$TARGET" ]; then
    echo "No number specified!"
    exit 1
  elif [ "$TARGET" = "-h" ] || [ "$TARGET" = "--help" ]; then
    echo "Usage: facetime.sh <number>"
    exit 0
  fi
}

__call_target() {
  echo "Calling $TARGET..."
  open facetime://$TARGET
}

__parse_args
__call_target
