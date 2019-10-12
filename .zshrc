#
# User configuration sourced by interactive shells
#

if command -v mg > /dev/null 2>&1; then
    export EDITOR="mg"
elif command -v emacs > /dev/null 2>&1; then
    export EDITOR="emacs -nw"
fi

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

