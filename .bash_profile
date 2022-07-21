#!/bin/bash
# ~/.bash_profile
#                  ██ ██ ███    ██ ████████ ███████ ██   ██ ██   ██ ██
#                  ██ ██ ████   ██    ██    ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██    ██    █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██    ██    ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████    ██    ███████ ██   ██ ██   ██ ██

[[ -f ~/.bashrc ]] && . ~/.bashrc

### ENVIRONMENT VARIABLES ###
export PATH=$PATH:~/.local/bin:~/.emacs.d/bin

# Autostart X at login- taken from Arch Linux wiki on 'xinit'
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
