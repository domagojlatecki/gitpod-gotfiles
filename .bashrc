source ~/posh-git-sh/git-prompt.sh

export PROMPT_COMMAND='__posh_git_ps1 "\[\033[0m\]╭─[\u@\h][$?]$(current_java_version)" "\n\[\033[0m\]╰─$(sw_colored_wd)\$ \[\033[0;32m\]";'$PROMPT_COMMAND
export PS2='\[\033[0m\]  │\[\033[0;32m\]'

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend
shopt -s checkwinsize

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

declare -A JAVA_VERSIONS=(
    [8]=~/.jdks/corretto-1.8.0_402
    #[8]="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
    #["G8"]="/Library/Java/JavaVirtualMachines/graalvm-ce-java8-21.0.0/Contents/Home/"
    #[10]=$(/usr/libexec/java_home -v10)
    #[11]=$(/usr/libexec/java_home -v11)
    #[13]=$(/usr/libexec/java_home -v13)
    #[15]=$(/usr/libexec/java_home -v15)
    #[17]=$(/usr/libexec/java_home -v17)
    [21]=/usr/lib/jvm/java-21-openjdk-amd64
)
ACTIVE_JAVA_VERSION=21

export JAVA_HOME="${JAVA_VERSIONS[$ACTIVE_JAVA_VERSION]}"
export SCALA_HOME="$HOME/.local/share/coursier/bin/scala"
export KOTLIN_HOME="/usr/bin/kotlin"
export PATH="${JAVA_HOME}/bin:${PATH}"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

trap 'echo -ne "\033[0m"' DEBUG
