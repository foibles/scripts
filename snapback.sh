#!/bin/bash

# Basic snapshot-style rsync backup script 

# Config
OPT="-aPh"
LINK="foibles@192.168.1.70:/home/foibles/bkp/last" 
SRC="/home/foibles/Dots"
SNAP="foibles@192.168.1.70:/home/foibles/bkp/"
LAST="foibles@192.168.1.70:/home/foibles/bkp/last"
date=`date "+%Y-%b-%d:_%T"`

# Run rsync to create snapshot
rsync $OPT $LINK $SRC ${SNAP}$date

# Remove symlink to previous snapshot
rm -f $LAST

# Create new symlink to latest snapshot for the next backup to hardlink
ln -s ${SNAP}$date $LAST 
