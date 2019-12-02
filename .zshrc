#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

autoload _ssh_hosts
alias gad='GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'
