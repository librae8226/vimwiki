#!/bin/bash

if [ -n "$1" ]; then
	echo ''
	echo 'Start synchronizing...'
	git config remote.origin.url "git@github.com:librae8226/vimwiki.git"
	DATE=$(date)
	echo $DATE
	echo ''
	if [ $1 == "push" ]; then
		echo 'copying to /opt/lampp/htdocs..'
		rm -rf /opt/lampp/htdocs/vimwiki_html
		cp -af ~/vimwiki/vimwiki_html /opt/lampp/htdocs
		echo 'pushing...'
		git add .
		git commit -a
		git push --all
		git push --tags
	elif [ $1 == "pull" ]; then
		echo "pulling..."
		git pull --all
	else
		echo "error arg."
		echo "USAGE: sync push|pull"
		exit
	fi
else
	echo "USAGE: sync push|pull"
	exit
fi

echo ''
echo 'Synchronize ok.'
echo ''
