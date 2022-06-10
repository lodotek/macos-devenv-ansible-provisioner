#!/usr/bin/env zsh

### FileSearch ###
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

### mkdir and cd ###
function mkcd() { mkdir -p "$@" && cd "$_"; }

function runans() {
  ansible-playbook main.yml --diff --verbose --limit $(hostname)
}

# function macans() {
#   cd ~/src/macos-provision &&
#   gitandans $1
# }

alias cd..="cd .."
alias ..="cd .."

alias macconfig="code ~/src/macos-devenv-ansible-provisioner"

function cheat(){
  echo "gitcheat"
  echo "syscheat"
  echo "syscheat"
  echo "k8scheat"
  echo "shellcheat"
  echo "gitmess"
  echo "good-readme"
}

alias gitcheat="cat ~/git-cheat-sheet.txt"
alias syscheat="cat ~/sys-cheat-sheet.txt"
alias osxcheat="cat ~/osx-cheat-sheet.txt"
alias k8scheat="cat ~/k8s-cheat-sheet.txt"
alias shellcheat="cat ~/shell-cheat-sheet.md"
alias gitmess="cat ~/.gitmessage"
alias zshshortcut="open http://www.geekmind.net/2011/01/shortcuts-to-improve-your-bash-zsh.html"
alias good-readme="open https://github.com/othneildrew/Best-README-Template"

# Makefile
alias m="make"

# Howdoi
alias hdi="howdoi -c -n 2"

# highlight
alias yaml="highlight --force --syntax yaml"

# Notify 
alias notify='osascript -e "display notification \"Script finished\" with title \"Over\""'
alias n=notify
