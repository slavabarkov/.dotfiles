# .dotfiles management repository  
### Idea from: https://news.ycombinator.com/item?id=11070797  
### Setup:  
    git init --bare $HOME/git/.dotfiles  
    alias dotfiles='/usr/bin/git --git-dir=$HOME/git/.dotfiles/ --work-tree=$HOME'  
    dotfiles config status.showUntrackedFiles no  
### Replicate home directory on a new machine:  
    git init --bare $HOME/git/.dotfiles
    alias dotfiles='/usr/bin/git --git-dir=$HOME/git/.dotfiles/ --work-tree=$HOME'
    dotfiles config status.showUntrackedFiles no
    git remote add -t \* -f origin git@github.com:viabar/.dotfiles.git
    git checkout master
