#!/bin/bash
set -e
defaultbrowser_program_path=~/bin/defaultbrowser

usage() {
	echo "Usage: $0 (chrome|safari|firefox)"
	exit 1
}

if [ $# -ne 1 ]; then
	usage
fi

browser=$1
case $browser in
chrome)
	;;
safari)
	;;
firefox)
	;;
*)
	usage
	;;
esac

if [ ! -x "$defaultbrowser_program_path" ]; then
	curl -o "$defaultbrowser_program_path" https://raw.githubusercontent.com/kerma/defaultbrowser/master/build/defaultbrowser
	chmod +x "$defaultbrowser_program_path"
fi

current_browser=`"$defaultbrowser_program_path" | awk '/^Current:/{print $2}'`
if [ $browser = $current_browser ]; then
	exit
fi

"$defaultbrowser_program_path" -set $browser

/usr/bin/osascript - <<EOF
repeat
	delay 0.01
	try
		tell application "System Events"
			click button 1 of window 1 of process "CoreServicesUIAgent"
			exit repeat
		end tell
	end try
end repeat
EOF
