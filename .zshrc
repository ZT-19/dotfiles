# script that runs when zsh shell is started and does the following:
# 1. configures shell session
# 2. sets environment variables
# 3. defines shell functions

PROMPT='%~ %# '

# Created by `pipx` on 2024-06-04 18:27:52
export PATH="$PATH:/Users/ztu/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

# Configurations from "How To - Bash vs zshrc", "How To - pyenv", and "Connecting to AWS with CMTAWS" Docs
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

eval "$(pyenv init --path)" # 
eval "$(pyenv init -)" # Configures terminal to respect shims that penv installs

export CMT_HOME=~/cmt # Tells various CMT tools where ~/cmt lives, in case its in a nonstandard location

export CMT_USER=ztu # Explicitly define user in environment variables

export LANG=en_US.UTF-8 # Sets zsh to use UTF-8 encoding

export PATH=/Users/ztu/.local/bin:$PATH # adds ~/.local/bin to your $PATH, which allows tools installed via pipx to be used.

# Specifies importing so that Python code imports properly; possibly unnecessary (2/28/2024)
# NOTE: does this conflict with PYENV_ROOT?
export PYTHONPATH=/Users/ztu/cmt/vtrack:/Users/ztu/cmt/vtrack/mm:/Users/ztu/cmt/vtrack/lib:/Users/ztu/cmt:/Users/ztu/cmt/vtrack/appserver:/Users/ztu/cmt/vtrack/base

# plugins
plugins=( 
    # Oh My Zsh: auto complete for shell (zsh)
    zsh-autosuggestions
)

# zsh-autosuggestions: another auto complete tool for zsh (not sure if this conflicts with Oh My Zsh

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export DOCKER_DEFAULT_PLATFORM=linux/amd64


export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
