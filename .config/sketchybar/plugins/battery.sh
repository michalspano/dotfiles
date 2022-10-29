#!/usr/bin/env sh

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

# Nordic Theme inspired colors
GREEN=0xffa3be8c
ORANGE=0xffd08770
RED=0xffbf616a

if [[ $CHARGING != "" ]]; then
  ICON=""
  sketchybar -m --set ${NAME} \
    icon=$ICON \
    icon.color=$GREEN \
    label=$(printf "${BATT_PERCENT}%%")
  exit 0
fi

case ${BATT_PERCENT} in
  100)    ICON="" && COLOR=$GREEN  ;;
  9[0-9]) ICON="" && COLOR=$GREEN  ;;
  8[0-9]) ICON="" && COLOR=$GREEN  ;;
  7[0-9]) ICON="" && COLOR=$GREEN  ;;
  6[0-9]) ICON="" && COLOR=$GREEN  ;;
  5[0-9]) ICON="" && COLOR=$GREEN  ;;
  4[0-9]) ICON="" && COLOR=$ORANGE ;;
  3[0-9]) ICON="" && COLOR=$ORANGE ;;
  2[0-9]) ICON="" && COLOR=$ORANGE ;;
  1[0-9]) ICON="" && COLOR=$RED    ;;
  [0-9])  ICON="" && COLOR=$RED    ;;
  *) ICON=""
esac

sketchybar -m --set ${NAME}\
  icon=$ICON \
  icon.color=$COLOR \
  label=$(printf "${BATT_PERCENT}%%")
