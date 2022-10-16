#!/usr/bin/env bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
  'com.apple.keylayout.US')           LABEL='EN' ;;
  'com.apple.keylayout.Swedish-Pro')  LABEL='SE' ;;
  'com.apple.keylayout.Slovak')       LABEL='SK' ;;
esac

sketchybar --set $NAME label="$LABEL"
