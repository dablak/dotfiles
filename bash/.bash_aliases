# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval         "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# I like confirming destructive operations.
alias cp="cp -iv"
alias mv="mv -i"
alias rm="rm -iv"
alias ..="cd .."

# Screen
alias kill_all_screens="screen -ls | grep -i detached | cut -d. -f1 | awk '{print $1}' | xargs kill"


# Find TODO strings in files
alias findTODO="egrep -Rwi --color 'TODO|FIXME|PENDING|<<<<<<<' ."

# security
alias findWorldWritableFiles='find . -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print'
alias findNoOwnerFiles='find . -xdev \( -nouser -o -nogroup \) -print'

# ls
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# SVN
alias rmsvndirs='rm -irf `find . -type d -name .svn`'

# virtualenv
alias cdv='cd $VIRTUAL_ENV'
alias wo='workon'

# Python
alias rmpyc='find . -name *.pyc -delete'

# Django
alias dshell='python manage.py shell'
alias runserver='python manage.py runserver'

# NPM
alias npm-exec='PATH=$(npm bin):$PATH'

# Source local aliases
if [ -f ~/.bash_aliases_local ]; then
	source ~/.bash_aliases_local
fi
