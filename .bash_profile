#!/bin/bash
# ~/.bash_profile
#                  ██ ██ ███    ██ ████████ ███████ ██   ██ ██   ██ ██
#                  ██ ██ ████   ██    ██    ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██    ██    █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██    ██    ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████    ██    ███████ ██   ██ ██   ██ ██

### ENVIRONMENT VARIABLES ###
export PATH=$PATH:~/.local/bin:~/.emacs.d/bin:~/.config/rofi/bin:~/.jenv/bin:

### JENV FOR JAVA DEVELOPMENT ###
eval "$(jenv init -)"

# [[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X at login- taken from Arch Linux wiki on 'xinit'
# Change exec startx when testing, and return it when done for security
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
