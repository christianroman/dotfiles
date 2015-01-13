#!/bin/bash

killall Dock

dockutil --remove all

dockutil --add /Applications/Safari.app
dockutil --add /Applications/Mail.app
dockutil --add /Applications/Notes.app
dockutil --add /Applications/Messages.app
dockutil --add /Applications/iTunes.app
dockutil --add /Applications/Settings.app
dockutil --add /Applications/Things.app
dockutil --add /Applications/Xcode.app
dockutil --add /Applications/iTerm.app
dockutil --add /Applications/Sublime\ Text\ 2.app
dockutil --add /Applications/Tweetbot.app

dockutil --add '/Applications' --view grid --display folder --sort name
dockutil --add '~/Downloads' --view fan --display stack --sort dateadded