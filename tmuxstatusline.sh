#!/bin/bash
cpustr=`top -bn 1 -i -c | grep Cpu | head -n 1 | awk '{print $2}' | tr -d ' %us'`
memstr=`free | head -n 2 | tail -n 1 | awk '{printf("%.1f",$3/$2*100)}' `
echo "CPU:"$cpustr"% MEM:"$memstr"%"
