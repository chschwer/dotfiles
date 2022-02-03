#!/bin/bash

export PS1="\[$(ppwd)\]\w \[\033[36m\]\$(__git_ps1 '(%s)')\[\033[0m\]\$ "

# Completion for gradle
if [ -f "$HOME/bash_completion.d/gradle-completion.bash" ]; then
  source $HOME/bash_completion.d/gradle-completion.bash
fi

# Competion for AWS cli
if [ -f "/usr/local/bin/aws_completer" ]; then
  complete -C '/usr/local/bin/aws_completer' aws
fi

# Informative git prompt:
# https://github.com/magicmonty/bash-git-prompt.git
# To be installed in ~/.bash-git-prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
