#!/bin/bash

if [ $# -eq 1 ]; then
	CHANGELOG=/tmp/changelog.tmp.$$

	cat >> $CHANGELOG << EOF
libav (6:11.3-$1) unstable; urgency=medium

  * AutoBuild Revision Update

 -- FreeSWITCH Autobuild <autobuild@freeswitch.org>  `date -R`

EOF
	cat debian/changelog >> $CHANGELOG
	cp $CHANGELOG debian/changelog
	rm $CHANGELOG

fi

git-buildpackage --git-upstream-tree=master -us -uc -sa --git-ignore-new --git-no-pristine-tar
