#!/bin/bash - 
#===============================================================================
#
#          FILE: dir-create.sh
# 
#         USAGE: ./dir-create.sh 
# 
#   DESCRIPTION: First required bash script in Assignment 5. Creates 500 directories and populates them with a file named `foobar.txt` containing "foo\nbar\nfoo\nbar\nfoobar".
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Daniel Briseno
#  ORGANIZATION: 
#       CREATED: 01/05/2021 17:36
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

dummy_txt=('foo' 'bar' 'foo' 'bar' 'foobar')	#dummy text to write in files

if [ ! -d dirs ]; then mkdir dirs
fi
chown $USER:$USER ./dirs
cd dirs

for i in {1..500}; do
	if [ ! -d dir_$i ]; then mkdir dir_$i 
	fi
	chown $USER:$USER ./dir_$i	#set permissions to add file to this directory
	echo ${dummy_txt[0]} > dir_$i/foobar.txt
	for idx in ${!dummy_txt[@]}; do
		if [[ $idx -ge 1 ]]; then  echo ${dummy_txt[$idx]} >> dir_$i/foobar.txt 
		fi
	done
done
