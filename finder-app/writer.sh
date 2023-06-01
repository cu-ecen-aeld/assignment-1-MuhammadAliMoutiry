#!/bin/bash
writefile=$1
writestr=$2

if [ $# != 2 ]
   then echo "Expected args are 2 but $# passed"
   return 1
else
   if [ ! -d $writefile ]; then
     mkdir -p "$(dirname "$writefile")" && touch "$writefile"
    else
        touch "$writefile"
     fi
     echo "$writestr" >> $writefile
fi
   
