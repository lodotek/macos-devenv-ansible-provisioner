#!/usr/bin/env zsh

export PATH=$PATH:~/go/bin
export GOPATH=~/go/
export GO111MODULE=on


if [[ $OSTYPE == darwin* && $CPUTYPE == arm64 ]]; then
  export GOROOT=/opt/homebrew/opt/go/libexec
else
  export GOROOT=/usr/local/opt/go/libexec
fi


alias got="go test"
alias gotv="go test -cover"
alias golang="howdoi golang"
