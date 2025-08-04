
CONFIG="$HOME/terminal-config/polybar/config.ini"

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload toph -c "$CONFIG" &
  done
else
  polybar --reload toph -c "$CONFIG" &
fi


