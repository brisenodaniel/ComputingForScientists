#!/bin/bash - 
#===============================================================================
#
#          FILE: dir-mutate.sh
# 
#         USAGE: ./dir-mutate.sh 
# 
#   DESCRIPTION: Second bash script in Assignment 5. Mutates foobar.txt in each subdirectory according to last digit in directory name.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Daniel Briseno 
#  ORGANIZATION: 
#       CREATED: 01/06/2021 09:17
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd dirs
dir_names=$(ls -F | grep /)
for nm in ${dir_names[@]};
do
	cd $nm
	toprint=$( awk -v nm=$nm 'BEGIN{ RS=""; OFS="\n"}
	nm ~ /.*1\/$/ {$4="eat beets"; print}\
	nm ~ /.*4\/$/ {$4="squash are great"; print}\
	nm ~ /.*5\/$/ {$4="dogs are better than cats"; print}\
	nm ~ /.*7\/$/ {$4="hello world"; print}\
	nm ~ /.*[23689]\/$/ {$4=""; print}\
	nm ~ /.*0\/$/ {$4="foobart"; print}' foobar.txt)
	printf "$toprint" > foobar.txt
	cd ../
done

