#!/bin/bash
date=$(date -d "$2" +[%d/%b/%Y:%H:%M:%S)
date1=$(date -d "$3" +[%d/%b/%Y:%H:%M:%S)
zcat $1 | awk '$4 >= "$date" && $4 <= "date1"' | awk '{print $1}' | sort -n | uniq -c | sort -rn | head -10 | awk '{print $2}'
