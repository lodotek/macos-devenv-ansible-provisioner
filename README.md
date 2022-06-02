# MacOS Ansible Playbook

This an Ansible Playbook to provision and customize my development environment on OSX.

## What does this playbook provide ?

It will :
* create useful directories.
* install packages (brew taps, asdf, npm, etc).
* copy dotfiles which configure various applications (Git, npm, terraform, asdf) into your home dir.
* copy in some zsh scripts (configurations, helper functions, aliases, etc)

## Install Instructions

* checkout this repo to `~/src/macos-devenv-ansible-provisioner`.
* copy `roles/mac-dev-playbook/files/ansible/ansible.cfg` to `~/.ansible.cfg`
* Create file `inventory` @ `~/.ansible/inventory` e.g.

```text
[localhost]
yourMacHostName gpg_key=${your-local-gpg-key}
```
* then go to `~/src/macos-devenv-ansible-provisioner`.
* run `ansible-playbook main.yml --diff --verbose --inventory ~/.inventory --limit $(hostname)`.

## Manual configurations

* Configure iTerm2 <https://apple.stackexchange.com/questions/136928/using-alt-cmd-right-left-arrow-in-iterm>


## Can I use it ?

Use at your own risk, this playbook doesn't aim to be used by anyone else. Please be sure to backup your current ~/.zshrc.rc file before executing this play-book ( as it will be overwritten with one from this repo) 

### asdf : install all plugins at once

```shell
 cut -d ' ' -f1 .tool-versions | xargs -I _ asdf plugin-add _
 ```
