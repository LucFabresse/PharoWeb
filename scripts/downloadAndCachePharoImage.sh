#!/bin/bash

# smalltalkci downloads Pharo images using this URLs:
#   http://files.pharo.org/get-files/80/pharo64-linux-stable.zip
# but those zip do not include sources file

# this script download Pharo images using these URLs:
#   http://files.pharo.org/get-files/80/pharo64.zip
#   http://files.pharo.org/get-files/90/pharo64.zip
# because it contain the sources files

# According to the current travais build, the correct version of the Pharo image is downloaded
# args:
# SMALLTALK_CI_CACHE
# TRAVIS_SMALLTALK_VERSION

# Example
# SMALLTALK_CI_CACHE=. TRAVIS_SMALLTALK_VERSION="Pharo64-8.0" ./downloadAndCachePharoImage.sh

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

PHARO_VERSION=$(echo "${TRAVIS_SMALLTALK_VERSION}" | cut -f2 -d- | tr -d '.')
echo "PHARO_VERSION=${PHARO_VERSION}"
PHARO_URL="http://files.pharo.org/get-files/${PHARO_VERSION}/pharo64.zip"

ls -lR "${SMALLTALK_CI_CACHE}"
# put our image in smalltalkci's image cache dir
IMAGE_CACHE_DIR="${SMALLTALK_CI_CACHE}/${TRAVIS_SMALLTALK_VERSION}"
mkdir -p "${IMAGE_CACHE_DIR}"
pushd "${IMAGE_CACHE_DIR}"
wget ${PHARO_URL}
unzip pharo64.zip
mv *.image ${TRAVIS_SMALLTALK_VERSION}.image
mv *.changes ${TRAVIS_SMALLTALK_VERSION}.changes
rm -fr pharo64.zip pharo.version
popd
ls -lR ${SMALLTALK_CI_CACHE}
