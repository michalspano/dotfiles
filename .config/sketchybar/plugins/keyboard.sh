#!/usr/bin/env sh

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

# English-Slovak-Swedish
case ${SOURCE} in
  'com.apple.keylayout.US')           LABEL='EN' ;;
  'com.apple.keylayout.Swedish-Pro')  LABEL='SE' ;;
  'com.apple.keylayout.Slovak')       LABEL='SK' ;;
esac

sketchybar --set $NAME label="$LABEL"
