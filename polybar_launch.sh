#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar -c ~/.config/polybar/config.ini main &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    # MONITOR=$m polybar --reload example &
    # MONITOR=$m polybar -c ~/.config/polybar/config.ini main &
    MONITOR=$m polybar -c ~/.config/polybar/forest/config.ini &
  done
else
    # polybar --reload example &
    # polybar -c ~/.config/polybar/config.ini main &
    polybar -c ~/.config/polybar/forest/config.ini &
fi
