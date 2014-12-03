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

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
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

# Move to the sites folder since all work usually starts there...
if [[ -d ./sites/ ]]; then
    cd sites
fi

# Add MetaMap to the path.
export PATH=/Users/naegelyd/Documents/nlp/public_mm/bin:$PATH
