#!/bin/bash
JMETER_HOME="/Users/gauravchawla/Downloads/apache-jmeter-5/bin"
TEST_PLAN_TEMPLATE="/Users/gauravchawla/Downloads/apache-jmeter-5/bin/templates/build-adv-web-test-plan.jmx"
cd "$JMETER_HOME"
pwd
./jmeter -t "$TEST_PLAN_TEMPLATE"

sleep 5

java -jar ApacheJMeter.jar -t "$TEST_PLAN_TEMPLATE" -Jproxy.port=8888 -Jproxy.port=8888 -Jhttps.proxyHost=127.0.0.1 -Jhttps.proxyPort=8888 -Jimplementation=Java org.apache.jmeter.protocol.http.proxy.gui.ProxyControlGui org.apache.jmeter.protocol.http.proxy.ProxyControl

sleep 5


osascript -e 'tell application "System Events" to keystroke "s" using {command down}' && sleep 2 && osascript -e 'tell application "System Events" to keystroke return'
