#!/bin/bash
ps aux | awk 'NR>1{tot[$1]++;} END{for(id in tot)printf "%s %s\n",id,tot[id]}'
HPID=$(ps aux | awk '{print $2}' | sort -n | tail -n 1)
echo -e "Самый большой PID:  ${HPID}"
