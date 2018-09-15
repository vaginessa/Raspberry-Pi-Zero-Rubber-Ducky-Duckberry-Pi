#!/bin/bash

function convert()
{
	local kbcode=""

	if [ "$1" == " " ]
	then
		kbcode='space'
	elif [ "$1" == "!" ]
	then
		kbcode='left-shift 1'
	elif [ "$1" == "." ]
	then
		kbcode='period'
	elif [ "$1" == "\`" ]
	then
		kbcode='backquote'
	elif [ "$1" == "~" ]
	then
		kbcode='left-shift tilde'
	elif [ "$1" == "+" ]
	then
		kbcode='kp-plus'
	elif [ "$1" == "=" ]
	then
		kbcode='equal'
	elif [ "$1" == "_" ]
	then
		kbcode='left-shift minus'
	elif [ "$1" == "-" ]
	then
		kbcode='minus'
	elif [ "$1" == "\"" ]
	then
		kbcode='left-shift quote'
	elif [ "$1" == "'" ]
	then
		kbcode='quote'
	elif [ "$1" == ":" ]
	then
		kbcode='left-shift semicolon'
	elif [ "$1" == ";" ]
	then
		kbcode='semicolon'
	elif [ "$1" == "<" ]
	then
		kbcode='left-shift comma'
	elif [ "$1" == "," ]
	then
		kbcode='comma'
	elif [ "$1" == ">" ]
	then
		kbcode='left-shift period'
	elif [ "$1" == "?" ]
	then
		kbcode='left-shift slash'
	elif [ "$1" == "\\" ]
	then
		kbcode='backslash'
	elif [ "$1" == "|" ]
	then
		kbcode='left-shift backslash'
	elif [ "$1" == "/" ]
	then
		kbcode='slash'
	elif [ "$1" == "{" ]
	then
		kbcode='left-shift lbracket'
	elif [ "$1" == "}" ]
	then
		kbcode='left-shift rbracket'
	elif [ "$1" == "(" ]
	then
		kbcode='left-shift 9'
	elif [ "$1" == ")" ]
	then
		kbcode='left-shift 0'
	elif [ "$1" == "[" ]
	then
		kbcode='lbracket'
	elif [ "$1" == "]" ]
	then
		kbcode='rbracket'
	elif [ "$1" == "#" ]
	then
		kbcode='left-shift 3'
	elif [ "$1" == "@" ]
	then
		kbcode='left-shift 2'
	elif [ "$1" == "$" ]
	then
		kbcode='left-shift 4'
	elif [ "$1" == "%" ]
	then
		kbcode='left-shift 5'
	elif [ "$1" == "^" ]
	then
		kbcode='left-shift 6'
	elif [ "$1" == "&" ]
	then
		kbcode='left-shift 7'
	elif [ "$1" == "*" ]
	then
		kbcode='kp-multiply'

	else
		case $1 in
		[[:upper:]])
			tmp=$1
			kbcode="left-shift ${tmp,,}"
			;;
		*)
			kbcode="$1"
			;;
		esac
	fi

	echo "$kbcode"
}
