#!/usr/bin/osascript
# Quoted from: https://apple.stackexchange.com/a/428915

tell application "System Events"
  do shell script quoted form of "/System/Applications/Mission Control.app/Contents/MacOS/Mission Control"
  click button 1 of group "Spaces Bar" of group 1 of group "Mission Control" of process "Dock"
  do shell script quoted form of "/System/Applications/Mission Control.app/Contents/MacOS/Mission Control"
end tell
