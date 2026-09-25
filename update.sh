#!/bin/bash

SYSTEM_NANORC=/etc/nanorc
DISTRO_NANORC=debian_13.nanorc
EXTRA_ADDRESS=/usr/share/nano/extra/

for LANG in $(ls -1 extra/)
do
	LANG_NANORC+=("$LANG")
done

echo -e ">>\tCopying files..."

cp $SYSTEM_NANORC distro/$DISTRO_NANORC
echo -e "$SYSTEM_NANORC to distro/$DISTRO_NANORC"

for LANG in "${LANG_NANORC[@]}"
do
	cp $EXTRA_ADDRESS$LANG extra/$LANG
	echo -e "$EXTRA_ADDRESS$LANG to extra/$LANG"
done

echo -e ">>\tUpdating git status..."

git status
