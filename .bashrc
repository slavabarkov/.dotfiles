export TERM=xterm
export PATH="$PATH:~/bin/"
export GIT_EDITOR=vim
export GIT_PS1_SHOWCOLORHINTS=true
source ~/bin/git-prompt
build_prompt () {
    PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]"
    git_info="$(__git_ps1)"
    if [[ $git_info ]]; then
        PS1+=" $git_info "
    fi
    PS1+="\$ "
}
PROMPT_COMMAND=build_prompt
alias dotfiles='/usr/bin/git --git-dir=$HOME/git/.dotfiles/ --work-tree=$HOME'
. /cygdrive/c/bin/miniconda3/etc/profile.d/conda.sh
