#/bin/sh

DAY_COUNT="$1"

# this script format the contents of the Apple Calendar,
# using the iCalBuddy command line tool + boxes cli utility

if ! command -v icalBuddy &> /dev/null || ! command -v boxes &> /dev/null; then
    printf "\`icalBuddy\` or \`boxes\` could not be found.\n"; exit 1
fi

if [ "$DAY_COUNT" = "--help" ] || [ "$DAY_COUNT" = "-h" ]; then 
  printf "Usage: $0 <day_count> <option>\n"; 
  printf "Default <day_count> is 0.\n\n"; 

  # all currently supported options
  printf "Options: -c|--cow\n\t"  
  printf " -d |--diamond\n\t"        
  printf " -dg|--dog\n\t"         
  printf " -s |--simple\n\t"      
  printf " -p |--paper.\n\t" 
  printf " Default is paper.\n"
  
  exit 

elif [ -z "$DAY_COUNT" ]; then DAY_COUNT=""; fi # default 0 = today

COMMAND="`icalBuddy -eep '*' -f -nc -sd eventsToday+${DAY_COUNT}`" # get events

# some names are larger than the width of the terminal; trim them, such that
# they fit within the terminal's width

WIDTH=$(tput cols) # get the width of the current terminal session
COMMAND=$(printf "$COMMAND" | sed -E "s/(.{${WIDTH}}).*/\1/") # trim

case "$2" in
  -c|--cow)     printf "${COMMAND}\n" | boxes -d peek -a c -s 41x11 ;;
  -d|--diamond) printf "${COMMAND}\n" | boxes -d diamonds -a hcvc   ;;
  -dg|--dog)    printf "${COMMAND}\n" | boxes -d dog -a c           ;;
  -s|--simple)  printf "${COMMAND}\n" | boxes -d shell -p a1l2      ;;
  *|-p|--paper) printf "${COMMAND}\n" | boxes -d parchment          ;;
esac
