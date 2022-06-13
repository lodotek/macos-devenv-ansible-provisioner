# Activate antigen package manager for zsh plugins
source /opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh # for arm64 users
# source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh # for Intel users

antigen init ~/.antigenrc

for file in ~/.zshrc.d/*.sh;
do
  source $file
done

#Setup FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Done.
antigen apply

source $ZSH/oh-my-zsh.sh
