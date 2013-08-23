#!/bin/bash

scriptPath=`readlink -f $0`
scriptDir=`dirname $scriptPath`
. $scriptDir/terminal-control.sh

styles=green
if [[ $# > 0 ]]; then
  styles="$@"
fi
styles="`echo $styles | tr '[:lower:]' '[:upper:]'`"

codes=''
for s in $styles; do
  codes=$codes${!s}
done

# okay, this is just noise.
#echo -e ${CYAN}Reading input...${REG}${REGF}${REGB}

#while read line; do # nope, `read` will trim spaces
for line in "`cat`"; do
  echo -e "$codes$line${REG}${REGF}${REGB}"
done

# okay, this is just noise.
#echo -e ${CYAN}Done.${REG}${REGF}${REGB}
