#!/bin/bash
options="⇠ Logout\n⟳ Restart\n⏻ Shutdown"
chosen=$(printf "%b" "$options" | rofi -dmenu -i -p "Power")

case "$chosen" in
	*Logout*)
		awesome-client "awesome.quit()"
		;;
	*Restart*)
		systemctl reboot
		;;
	*Shutdown*)
		systemctl poweroff
		;;
esac
