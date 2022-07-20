#!/bin/bash
#~/.bashrc
#                  ██ ██ ███    ██ ████████ ███████ ██   ██ ██   ██ ██ 
#                  ██ ██ ████   ██    ██    ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██    ██    █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██    ██    ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████    ██    ███████ ██   ██ ██   ██ ██

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### START-UP ###
cat ~/documents/jintekki_ascii
echo ''
neofetch
fish

### ALIASES ###
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
