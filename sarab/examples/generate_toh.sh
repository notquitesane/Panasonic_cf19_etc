#!/bin/bash
#
# Towers of Hanoi in bash
# Generates a rotation.schedule file for SaraB
#
# Originally by Chet Ramey (chet@po.cwru.edu)
# Modified by Tristan Rhodes (tristanbob@hotmail.com) and
# Martin Zuther (code@mzuther.de)

# Recursive function
function hanoi # n from to spare
{
    declare -i nm1=$1-1
    if [ $nm1 -gt 0 ]; then
        hanoi $nm1 $2 $4 $3
    fi

    echo $1

    if [ $nm1 -gt 0 ]; then
        hanoi $nm1 $4 $3 $2
    fi
}

# Test the input, must be between 3 to 9
case $1 in
[3-9])
    # Convert from numbers to letters and remove lines that are
    # excessive for backups and only needed for completion of he
    # problem of Hanoi
    hanoi $1 1 2 3 | tr 123456789 ABCDEFGHI | head -n `echo "2^($1 - 1)"|bc`
    ;;
*)  echo "${0##*/}: Argument must be from 3 to 9"
    exit 1
    ;;
esac

exit 0
