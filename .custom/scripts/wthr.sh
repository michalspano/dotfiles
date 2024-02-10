#!/usr/bin/env sh

# This script, upon invocation, will display the current weather
# with an icon and the temperature in celsius. Run the script with
# the --install (or -i) flag to copy it to /usr/local/bin (default).

# Check if first argument is --install (or -i) and copy 
# the script to /usr/local/bin (default).
if [[ "$1" == "--install" ]] || [[ "$1" == "-i" ]]; then
  destination="/usr/local/bin" # Change this to your preferred destination
  cp "$0" $destination/wthr
  # Log and exit with success
  echo "Copied $0 to $destination/wthr"; exit 0
fi

# User defined location
LOCATION="Göteborg"

# Get the weather data from wttr.in API
data=$(curl -s "wttr.in/$LOCATION?format=%C+|+%t")

# Check if data is empty, then warn the user that they are not connected to the internet
# or the location is invalid.

if [[ -z "$data" ]]; then
  echo "No internet connection or invalid location"
  exit 1
fi

# Format the temperature to the following format:
#   <temperature>°C

temp=$(echo $data | awk -F '|' '{print $2}')  # Obtain the temperature (second part after the pipe)
temp="${temp//\+/}"                           # Remove the plus sign
temp="${temp// /}"                            # Remove the space

# Display only the temperature if the condition is unknown
if [[ "$data" == *"nknown"* ]]; then
  echo "$temp"; exit 0
fi

# Obtain the condition (first part before the pipe), remove the spaces and convert to lowercase
condition=$(echo $data | awk -F '|' '{print $1}' | tr '[:upper:]' '[:lower:]')
condition="${condition// /}"

# Map the condition to an icon
# TODO: add missing conditions based on the API
case "${condition}" in
  "clear")                          icon="" ;;
  "sunny")                          icon="" ;;
  "partlycloudy")                   icon="" ;;
  *"lightrain"* | *"drizzle"* )     icon="" ;;
  *"rain"*)                         icon="" ;;
  "overcast" | *"mist"* | *"fog"*)  icon="" ;;
  "snowshowers")                    icon="" ;;
  *"snow"*)                         icon="❅" ;;
  *"storm"*)                        icon="" ;;
*)                                  icon=""  ;; # Default callback
esac

# Yield the icon and the temperature (with a space in between)
echo "$icon  $temp"
