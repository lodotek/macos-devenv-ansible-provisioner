#!/usr/bin/env zsh

export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent