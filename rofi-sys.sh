#!/usr/bin/env bash
{
  action=$( echo 'Suspend,Hibernate,Logout,Restart,Shutdown' | rofi -dmenu -sep ',' -p 'System:' -i -no-custom)
} && {
  case $action in 
      Suspend) systemctl suspend && i3lock -i ~/Pictures/Lock;;
      Hibernate) systemctl hibernate;;
      Restart) systemctl reboot;;
      Logout) i3-msg exit;;
      Shutdown) systemctl poweroff;;
      *) break;;
  esac
}
