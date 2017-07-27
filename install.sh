#!/bin/sh
#
# source install.sh or sh install.sh
#

function __install_pgenv() {
  local HERE="$(cd -P -- "$(dirname -- ${BASH_SOURCE:-$0})" && pwd -P)"
  local BASH_PROFILE=~/.bash_profile
  sed -i -e '/### start pgenv/,/### end pgenv/d' $BASH_PROFILE

  cat <<EOS >> ~/.bash_profile
### start pgenv
source $HERE/profile
export PATH=$HERE/bin:\$PATH
### end pgenv
EOS
  touch $HERE/profile
  source ~/.bash_profile
}

__install_pgenv
unset -f __install_pgenv
