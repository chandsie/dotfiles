# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# show current git branch (color coded by branch status) in PS1
# modified version of Aki Matsukawa's version (http://amatsukawa.com/git-branch-command-line.html) Thanks!
parse_git_branch ()
{
    local GITDIR=`git rev-parse --show-toplevel 2>&1`
    if [[ "$GITDIR" != '/Users/shreyas' ]]
    then
        local BRANCH=`git branch 2>/dev/null | sed -n '/^\*/s/^\* //p'`
        if [ -n "$BRANCH" ]; then
            echo -e "[$BRANCH]"
        fi
    else
        echo ""
    fi
}

function git_color ()
{
    local STATUS=`git status 2>&1`
    if [[ "$STATUS" == *'Not a git repository'* ]]
    then
        echo ""
    else
        if [[ "$STATUS" != *'working directory clean'* ]]
        then
            # red if need to commit
            echo -e '\033[0;31m'
        else
            if [[ "$STATUS" == *'Your branch is ahead'* ]]
            then
                # yellow if need to push
                echo -e '\033[0;33m'
            else
                # else cyan
                echo -e '\033[0;36m'
            fi
        fi
    fi
}

# Command prompt definition: [git_branch_name]username:cwd $
export PS1='\[$(git_color)\]$(parse_git_branch)\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '

# Vi style prompt input
set -o vi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f /usr/local/bin/django_bash_completion ]; then
    . /usr/local/bin/django_bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## Brew binaries
export PATH="/usr/local/bin:$PATH"

export VIRTUALENV_DISTRIBUTE=1

## Brewed Android SDK
export ANDROID_HOME="/usr/local/opt/android-sdk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Add Latex binaries to path
export PATH="/usr/texbin:$PATH"
