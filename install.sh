#!/bin/sh -e

ln -s "$(readlink -f $(dirname "$0"))/init.el" ~/.emacs.d/init.el
