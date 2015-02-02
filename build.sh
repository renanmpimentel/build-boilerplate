#!/bin/bash

DIST="build"

IGNORE=(
    "assets/styles/style.css"
    "assets/scripts/main.js"
)

STYLE="assets/styles"
SCRIPT="assets/scripts"

# JS - http://javascript-minifier.com/examples
echo -e "Minifier JS"
curl -X POST -s --data-urlencode "input@${SCRIPT}/main.js" http://javascript-minifier.com/raw > ${SCRIPT}/main.min.js

# CSS - http://cssminifier.com/examples
echo -e "Minifier CSS"
curl -X POST -s --data-urlencode "input@${STYLE}/style.css" http://cssminifier.com/raw > ${STYLE}/style.min.css

if [[ ! -d ${DIST} ]]; then
    mkdir ${DIST}
fi

cp ./* ${DIST}
rm -rf ${IGNORE}

echo -e "Build complete"
