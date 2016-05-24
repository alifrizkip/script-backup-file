#!/bin/sh
DATE=`date +%Y%m%d-%H%M`
SDIR=/home/user/public_html/
DDIR=/home/user/file/daily/

FILENAME=backup-daily-$DATE.tar.gz

##backup
cd $SDIR
tar zcf $FILENAME user.com/
mv $FILENAME $DDIR

##delete old file
cd $DDIR
ls -t | sed -e '1,10d' | xargs -d '\n' rm -R > /dev/null 2>&1

exit 0

