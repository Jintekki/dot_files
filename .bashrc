#
# ~/.bashrc
#                   _ _ _ _  _ _ _
#       | | |     |    |    |      |    | |    | |                    
#       | | |\    |    |    |      |   /  |   /  |                   
#       | | |  \  |    |    |-     |\/    |\/    |             
# |     | | |    \|    |    |      |  \   |  \   |                            
#  \ _ /  | |     |    |    |_ _ _ |    \ |    \ |                                   
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Run neofetch and other aesthetic start-up commands
cat ~/documents/jintekki_ascii
echo ''
neofetch
fish
