#!/bin/bash

## CONFIGURATION
separator="=================================================================================================="
j_meter_script=CMS_JMeter_Skript.jmx
test_data=requests.csv
num_ramp_up=0
num_iterations=250

## ITERATE OVER ALL WANTED NUM_THREADS VALUES
for num_threads in 1 10 15 30
do
        name_run="jmeter-run-t$num_threads-r$num_ramp_up-n$num_iterations"

        #exec &> >(tee -a "$name_run.log")

        echo $separator
        echo "New Apache JMeter run with following config:"
        echo " - name           = $name_run"
        echo " - j_meter_script = $j_meter_script"
        echo " - num_ramp_up    = $num_ramp_up"
        echo " - num_iterations = $num_iterations"
        echo " - num_threads    = $num_threads"
        echo $separator

        ## CALL APACHE JMETER
        jmeter -n -JtestData=$test_data -JnumThreads=$num_threads -JnumRampUp=$num_ramp_up -JnumIterations=$num_iterations -t $j_meter_script -l $name_run.jtl -Djava.rmi.server.hostname=10.40.235.120 -Dclient.rmi.localport=60000 -R10.40.235.121
        
        #exec &>/dev/tty

done
