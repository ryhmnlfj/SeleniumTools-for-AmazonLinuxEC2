#!/bin/sh

## run Xvfb & Selenium Server Standalone
## (should to launch Xvfb and set env BEFORE launching Selenium Server Standalone)

Xvfb :1 -screen 0 1024x768x24 >& xvfb.log &
export DISPLAY=:1
printenv | grep DISPLAY
#cd ./selenium-server/
java -jar selenium-server-standalone-3.4.0.jar >& selenium_server.log &
jobs

