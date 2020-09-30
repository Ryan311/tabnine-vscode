#!/usr/bin/env bash
set -eu

export DISPLAY=':99.0'
/usr/bin/Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &

tsc -p ./  
node ./out/test/runTest.js