#!/bin/bash

# source $SMALLTALK_CI_HOME/pharo/run.sh
# PharoVM=${SMALLTALK_CI_VMS}/${TRAVIS_SMALLTALK_VERSION}/pharo-vm/pharo
# env
# ls -lR ${SMALLTALK_CI_VMS}
# ls -lR $SMALLTALK_CI_HOME


readonly ANSI_BOLD="\033[1m"
readonly ANSI_RED="\033[31m"
readonly ANSI_GREEN="\033[32m"
readonly ANSI_YELLOW="\033[33m"
readonly ANSI_BLUE="\033[34m"
readonly ANSI_RESET="\033[0m"
readonly ANSI_CLEAR="\033[0K"

echo -e "${ANSI_BOLD}${ANSI_BLUE}[Starting] CleanImage.sh${ANSI_RESET}"

script="
Transcript crShow: (1+1) asString
"

"${SMALLTALK_CI_VM}" "${SMALLTALK_CI_IMAGE}" --no-default-preferences eval "${script}"

echo -e "${ANSI_BOLD}${ANSI_BLUE}[DONE] CleanImage.sh${ANSI_RESET}"
