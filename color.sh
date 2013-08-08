#!/bin/bash

style=green
if [[ $# > 0 ]]; then
  style=$1
fi
style=`echo $style | tr '[:lower:]' '[:upper:]'`

. terminal-control.sh

echo -e ${CYAN}Reading input...${REG}${REGF}${REGB}

echo -e ${!style}
while read line; do
  echo $line
done
echo -e ${REG}${REGF}${REGB}

echo -e ${CYAN}Done.${REG}${REGF}${REGB}
