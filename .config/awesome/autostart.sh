#!/bin/zsh

function run {
  pattern="$1"
  shift
  if ! pgrep -f "$pattern" > /dev/null;
  then
    "$@" &
  fi
}
run "nm-applet" nm-applet
run "org_kde_powerdevil" /usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdevil
run "blueman-tray" blueman-tray
run "polkit-gnome-authentication-agent-1" /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
run "numlockx" numlockx on
run "picom" picom --config ~/.config/awesome/picom.conf -b
run "xss-lock" xss-lock -- i3lock -c 1a1a1a

xmodmap -e "pointer = 3 2 1"
