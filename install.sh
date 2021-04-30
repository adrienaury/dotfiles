#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"

common() {
cat <<EOF
export LANG='fr_FR.UTF-8'
export LC_ALL='fr_FR.UTF-8'
export LANGUAGE='fr_FR:fr'
export TERM=xterm
export TZ=Europe/Paris
EOF
}

zshrc() {
cat <<EOF
# Fix some problems with key bindings
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
EOF
}

id

if [ -f ~/.bashrc ]; then
   echo $(common) >> .bashrc
fi

if [ -f ~/.zshrc ]; then
  common >> ~/.zshrc
  zshrc >> ~/.zshrc
fi

