chosen=$(printf "Shutdown\nReboot\nSuspend\nLogout" | wofi --show dmenu --prompt "Power Options:")

case $chosen in
"Shutdown")
  systemctl poweroff
  ;;
"Reboot")
  systemctl reboot
  ;;
"Suspend")
  systemctl suspend
  ;;
"Logout")
  pkill -KILL -u $USER
  ;;
esac
