#!/bin/bash
#top -n 1|head -n 3|tail -n 1 | gawk '{printf("[CPU:%s%]",$2)}'
#free | head -n 2 | tail -n 1 | gawk '{printf("[MEM:%.1f%]",$3/$2*100)}' 
#cpustr=`top -n 1|head -n 3|tail -n 1 | gawk '{printf("%s"),$2}'`
cpustr=`vmstat|tail -n 1 | awk '{print $13}'`
memstr=`free | head -n 2 | tail -n 1 | awk '{printf("%.1f",$3/$2*100)}' `
echo "CPU:"$cpustr"% MEM:"$memstr"%"
