# Activate antigen package manager for zsh plugins
if [[ $OSTYPE == darwin* && $CPUTYPE == arm64 ]]; then
  source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
else
  source /opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
fi


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
