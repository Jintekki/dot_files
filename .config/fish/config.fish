#                  ██ ██ ███    ██ ████████ ███████ ██   ██ ██   ██ ██ 
#                  ██ ██ ████   ██    ██    ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██    ██    █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██    ██    ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████    ██    ███████ ██   ██ ██   ██ ██

### STARSHIP PROMPT ###
if status is-interactive
   starship init fish | source
end

### ALIASES ###

# exa - ls replacement #
alias ls='exa -a --color=always --group-directories-first'  # all files and dirs
alias la='exa -al --color=always --group-directories-first' # list format
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
status --is-interactive; and jenv init - | source
