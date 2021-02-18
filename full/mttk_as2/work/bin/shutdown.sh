#!/bin/sh
BIN_PATH=`pwd`
SERVER_HOME=`dirname $BIN_PATH`
touch $SERVER_HOME/data/STOPME
echo "Stop signal is sent!"
 
 
