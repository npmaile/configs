#!/usr/bin/env bash
set -e
if [[ "$OSTYPE" == "linux-gnu" ]]; then
        Picker="rofi -dmenu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        Picker=choose
fi
site=`find  ~/.password-store -name '*gpg' | sed -E 's/.*password-store\/(.*)\.gpg/\1/g' | $Picker`
pass -c "$site"

