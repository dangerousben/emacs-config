#!/bin/sh -e

set -o noclobber

cat > ~/.emacs <<EOF
(add-to-list 'load-path "$(readlink -f $(dirname "$0"))")
(load "main.el")
EOF
