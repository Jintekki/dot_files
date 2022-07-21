#!/bin/bash
# ~/.bash_profile
#                  ██ ██ ███    ██ ████████ ███████ ██   ██ ██   ██ ██
#                  ██ ██ ████   ██    ██    ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██    ██    █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██    ██    ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████    ██    ███████ ██   ██ ██   ██ ██

### ENVIRONMENT VARIABLES ###
export PATH=$PATH:~/.local/bin:~/.emacs.d/bin

# [[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X at login- taken from Arch Linux wiki on 'xinit'
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
