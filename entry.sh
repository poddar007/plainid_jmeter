#!/usr/bin/env bash

cd code
git clone https://github.com/poddar007/plainid_jmeter.git
echo "*************Running entry.sh file**********"
cd plainid_jmeter
pwd
ls

URL=${@}
echo "Starting JMeter tests on ${URL}"

#Command
cd ../../bin
sh jmeter -n -t /opt/apache-jmeter-5.2.1/code/plainid_jmeter/PlainID Users.jmx -l /opt/apache-jmeter-5.4.1/code/test_output.csv -JThreadNumber=4 -JRampUpPeriod=10

echo "********entry.sh file RAN SUCCESSFULLY*******"
