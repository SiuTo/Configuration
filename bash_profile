parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

YELLOW="\[\033[01;32m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
BLACK="\[\033[0;38m\]"

export PS1="$YELLOW\u@\h:$BLUE\w$RED_BOLD\$(parse_git_branch)$BLACK$ "

