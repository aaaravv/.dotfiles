#!/bin/sh

# Exec Sway
if [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

# Unlock GNOME keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  # exec startx
# fi

# Display Manager 
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway
QT_QPA_PLATFORM=wayland
QT_QPA_PLATFORM=wayland-egl
