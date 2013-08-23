#!/bin/bash

style=green
if [[ $# > 0 ]]; then
  style=$1
fi
style=`echo $style | tr '[:lower:]' '[:upper:]'`

scriptPath=`readlink -f $0`
scriptDir=`dirname $scriptPath`
. $scriptDir/terminal-control.sh

# okay, this is just noise.
#echo -e ${CYAN}Reading input...${REG}${REGF}${REGB}

#while read line; do # nope, `read` will trim spaces
for line in "`cat`"; do
  echo -e "${!style}$line${REG}${REGF}${REGB}"
done

# okay, this is just noise.
#echo -e ${CYAN}Done.${REG}${REGF}${REGB}
