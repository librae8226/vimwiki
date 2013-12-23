#!/bin/bash

if [ -n "$1" ]; then
	git archive master | bzip2 > $1.tar.bz2
else
	git archive master | bzip2 > vimwiki_`date +%Y%m%d$k%M%S`.tar.bz2
fi

