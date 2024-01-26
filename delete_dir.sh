#!/bin/bash

RELATIVE_DIR=$(dirname "$0")
cd "$RELATIVE_DIR"
PROJ_ROOT=$(pwd -P)

if [ $# -ne 2 ]; then
    echo "dir_check error."
    echo "usage sh ./dir_manage.sh ./path 4"
    exit 1
fi

TARGET_PATH=$1
SAVE_MONTH=$2
DATA_LIST=`ls $TARGET_PATH`
CHECK_DAY=`date +"%Y%m%d" -d -${SAVE_MONTH}month`

# echo "dir file count : " `ls -l $TARGET_PATH | wc -l`
echo "check day : $CHECK_DAY"

echo "--------------------------------"

for DIR in $DATA_LIST
do
    DATE=`echo $DIR | cut -d "." -f3 | sed 's/_//g'`
    if [ ! -z $DATE ] && [ $DATE -lt $CHECK_DAY ]; then
        rm -rf $TARGET_PATH/$DIR
    fi
done