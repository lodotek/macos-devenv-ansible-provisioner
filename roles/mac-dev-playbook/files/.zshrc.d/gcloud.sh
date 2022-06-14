#!/usr/bin/env zsh

alias gclo="gcloud"
alias gcloalu="gcloud auth login --update-adc"

# Autocompletion


if [[ $OSTYPE == darwin* && $CPUTYPE == arm64 ]]; then
  source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
else
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi