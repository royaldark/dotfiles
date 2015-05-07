#!/bin/bash

#
# Dotfiles installation script
#
# To run:
# `wget -O - https://raw.githubusercontent.com/royaldark/dotfiles/master/setup.sh | bash`
#

set -e

cd ~

git clone https://github.com/royaldark/dotfiles.git

cd dotfiles

cp -r -t .. $(find . -maxdepth 1 -name '.?*')

cp -r -t .. bin

case "$(uname -s)" in
	CYGWIN*)
		cp -r -t .. $(find cygwin/ -maxdepth 1 -name '.?*')
		;;
esac
