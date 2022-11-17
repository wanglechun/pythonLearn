#!/bin/bash

#message:create head information for python shell 
#author:wanglechun
#date:2022-11-17

name=$1
suffix=".py"
fileName=$name$suffix

if [ -z "$name" ]
then
	echo 'at least one parameter'
else
    
    if [ ! -e $fileName ]
    then
	touch $fileName
	chmod +x $fileName
	cat >> $fileName <<EOF 
#!/usr/bin/python 
# -*- coding: UTF-8 -*-

#author:wanglechun
#date:`date "+%Y-%m-%d %H:%M:%S"`


EOF
	vim $fileName
    else
	echo "the $fileName is exited"  
    fi
fi
