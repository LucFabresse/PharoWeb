#!/bin/bash

# PharoVM=${SMALLTALK_CI_VMS}/${TRAVIS_SMALLTALK_VERSION}/pharo-vm/pharo
env
ls -lR ${SMALLTALK_CI_VMS}
ls -lR $SMALLTALK_CI_HOME

source $SMALLTALK_CI_HOME/pharo/run.sh

pharo::run_script "
1 + 1
"
