#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

autoload _ssh_hosts
alias gad='GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'

if command -v exa > /dev/null 2>&1; then
    alias l="exa -al"
    alias lc="exa -ls=changed"
    alias lk="exa -ls=size"
    alias ll="exa -l"
    alias lt="exa -ls=modified"
fi

if [ -f ${HOME}/.cargo/bin/procrustes ]; then
    procrustes
fi
