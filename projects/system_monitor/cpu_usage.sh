#!/bin/bash

: '
    Title: CPU USAGE MONITORING
    AUTHOR: Pranjal Patil
    DATE: 20TH AUGUST, 2023
'



function cpu_stats {
    echo "........................................"
    echo "..........CPU USAGE.............."
    echo "........................................"
    ps -eocomm,pcpu | grep -E -v '(0.0)' >> "$1".txt
}


function cpu_stats_top {
    echo "........................................"
    echo "..........CPU USAGE.............."
    echo "........................................"
    top >> "$1".txt
}