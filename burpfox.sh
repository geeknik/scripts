#!/bin/sh
PROFILEDIR=`mktemp -p /tmp -d tmp-fx-profile.XXXXXX.d`
cp burp-prefs.js $PROFILEDIR/prefs.js
chmod 444 $PROFILEDIR/prefs.js
firefox -profile $PROFILEDIR -no-remote -new-instance
rm -rf $PROFILEDIR
