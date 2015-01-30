# -------------------------------- Begin Aliases ------------------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias g='git'
alias h='history'
alias j='jobs -l'
alias which='type -a'

# Shortcuts for moving up directories
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias l='ls -alG'
alias ls='ls -aG'
alias lh='ls -lh'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# Suck at typing:
alias sl='ls'
# -------------------------------- End Aliases --------------------------------

# Set where virutal environments will live.
export WORKON_HOME=$HOME/.virtualenvs
# Ensure all new environments are isolated from the site-packages directory.
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# Source virtualenvwrapper if it exists.
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Configure auto-completion for git and the g as git alias.
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
__git_complete g __git_main

COLOR_OFF='\e[0m'       # Text Reset

# Regular Colors
BLACK='\e[0;30m'        # Black
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White

# Configure prompt...show git branch and status in it
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWCOLORHINTS=1
    PROMPT_COMMAND='__git_ps1 "${RED}\u@\h ${BLUE}\w${COLOR_OFF}" "\n$> "'
else
    PS1="${RED}\u@\h ${BLUE}\w${COLOR_OFF}\n$> "
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
