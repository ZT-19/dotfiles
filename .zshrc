### GENERAL ### 
# configures shell session, sets env variables, and define any shell functions

## show branch in prompt ##
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_PINK='%F{211}'
COLOR_BLUE='%F{81}'
COLOR_WHITE='%F{15}'
COLOR_DEF='%f'

setopt PROMPT_SUBST
export PROMPT='${COLOR_PINK}%~ ${COLOR_WHITE}$(parse_git_branch)${COLOR_BLUE} %% '
##

# (old) prompt without branch
#PROMPT='%~ %# ' 

# aliases for common git commands

alias ll='ls -la'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gpull='git pull'
alias gpush='git push'
alias gs='git status'

# better directory navigation
setopt AUTO_CD              # just type directory name to cd into it
#setopt AUTO_PUSHD          # make cd push old directory onto stack
#setopt PUSHD_IGNORE_DUPS   # don't push duplicate directories
#setopt PUSHD_MINUS         # make 'cd -' work

# helpful exports
export LANG=en_US.UTF-8 # Sets zsh to use UTF-8 encoding
export PATH=/opt/homebrew/bin:$PATH
export PATH=/Users/ztu/.local/bin:$PATH # adds ~/.local/bin to $PATH, to allow tools installed w/ pipx to be used.
export PATH="/opt/homebrew/Cellar/gcc/14.2.0_1/bin:$PATH"

# color support for ls and grep
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias grep='grep --color=auto'

###

### CUSTOM SHELL FUNCTIONS ###

function mkcd() {
    [[ -z "$1" ]] && echo "Usage: mkcd <directory>" && return 1
    mkdir -p "$1" && cd "$1"
}


###

### AUTO COMPLETE ###

# zsh auto suggestions
    # accept suggestion with (rightarrow) or (ctrl + e)
    # clear recommendation history with: rm ~/.zsh_history && source ~/.zshrc
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# autocomplete history settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY          # share history between sessions
setopt HIST_IGNORE_ALL_DUPS   # don't record duplicate commands
setopt HIST_REDUCE_BLANKS     # remove superfluous blanks from history

###

### DOCKER ###
alias docker-clean='docker system prune -af'  # remove unused docker data
alias docker-stop-all='docker stop $(docker ps -q)'  # stop all running containers

# use to run containers on silicon macs (m1, m2, etc) to use x86_64 arch instead of ARM
#export DOCKER_DEFAULT_PLATFORM=linux/amd64
