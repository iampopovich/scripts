#!/bin/bash
echo "User's home directory is : $HOME"
echo "Let skip dollar sign \$1 lol kek"
echo "Current directory is:"
pwd
echo "Result of execution of pwd ; whoami"
pwd ; whoami
echo "Result of execution of pwd ; ls ; uptime"
pwd ; ls ; uptime
getconf ARG_MAX #shows max numver of arguments gor command
echo ""
grade=10
person="Pepe"
echo "$person is a good boy, he is in grade $grade"
echo "here i use \`command\` and \$(command) "
echo `uptime`
echo $(uptime)
echo ""
mydir=$(pwd)
echo $mydir
echo "let's try some math"
var1=$(( 5 + 5 ))
echo $var1
var2=$(( $var1 * 2 ))
echo $var2
var3=$(( 12 * 12 ))
echo $var3
echo "here's conditional executing if-then"
if pwd
then
	echo `pwd`
fi
echo "here's user searching"
user=_ondemand
if grep $user /etc/passwd
then
echo "The user $user Exists"
fi
echo "here's conditional executing if-then-else"
if pwd
then
	echo `pwd`
fi
echo "here's user searching"
user=_ondemand123
if grep $user /etc/passwd
then
echo "The user $user Exists"
else
echo "The user $user doesn't Exist"
fi
echo "here's conditional executing if-then-elif"
user=anotherUser
if grep $user /etc/passwd
then
echo "The user $user Exists"
elif ls /home
then
echo "The user doesn’t exist but anyway there is a directory under /home"
fi
