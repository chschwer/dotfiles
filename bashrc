#!/bin/bash

export PS1="\[$(ppwd)\]\w \[\033[36m\]\$(__git_ps1 '(%s)')\[\033[0m\]\$ "
source $HOME/bash_completion.d/gradle-completion.bash
