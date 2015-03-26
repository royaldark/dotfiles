#!/bin/bash

#
# Dotfiles installation script
#
# To run:
# `wget -O https://raw.githubusercontent.com/royaldark/dotfiles/master/setup.sh | bash`
#

set -e

cd ~

git clone https://github.com/royaldark/dotfiles.git

cd dotfiles

cp -tr .. $(find . -maxdepth 1 -name '.?*')

cp -tr .. bin

case "$(uname -s)" in
	CYGWIN*)
		cp -tr .. $(find cygwin/ -maxdepth 1 -name '.?*')
		;;
esac
