#!/bin/bash
if [ "$1" = "-l" ] || [ "$1" = "--link" ]; then
	ln -s $2 $3
elif [ "$1" = "-r" ] || [ "$1" = "--remove" ]; then
	rm -rf $2
elif [ "$1" = "-f" ] || [ "$1" = "--file" ]; then
	touch $2
elif [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	echo "Help:
	-h              or --help    --> invoke help list
	-l [target] [link]      or --link    --> create a symbol link
	-r [file]           or --remove  --> remove a file
	-f [file]           or --file    --> create a file"
else
	echo error, for use this script type in 1st argument: -l or --link or -r or --remove or -f or --file or -h or --help
fi
