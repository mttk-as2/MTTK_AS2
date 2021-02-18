#!/bin/sh
BIN_PATH=`pwd`

SERVER_HOME=`dirname $BIN_PATH`
JAVA_HOME="$SERVER_HOME/runtime/jre"
# echo "Java home:$JAVA_HOME"
# Check Java Home
if [ ! -r "$JAVA_HOME/bin/java" ]; then
	echo The JAVA_HOME environment variable is not defined correctly
	echo This environment variable is needed to run this program
	exit 1
fi

# Check CHUB HOME
if [ ! -r "$SERVER_HOME/bin/server.sh" ]; then
	echo The SERVER_HOME environment variable is not defined correctly
	echo This environment variable is needed to run this program
	exit 1
fi

# check whether are updated bootstrap.jar
# bootstrap.jar can not be replaced by upgrade program since it is always in use
if [ -r "$SERVER_HOME/bin/bootstrapNew.jar" ]; then
	cp -f $SERVER_HOME/bin/bootstrapNew.jar $SERVER_HOME/bin/bootstrap.jar
	rm -f   $SERVER_HOME/bin/bootstrapNew.jar
	echo Updated bootstrap.jar applied
fi

# ---------------------------
# build class path
# ---------------------------
CLASSPATH="$SERVER_HOME/bin/bootstrap.jar"

# ----- Execute The Requested Command ---------------------------------------
echo "Using SERVER_HOME:$SERVER_HOME"
echo "Using JAVA_HOME:$JAVA_HOME"
$JAVA_HOME/bin/java -version

_EXECJAVA="$JAVA_HOME/bin/java"
MAINCLASS="com.mttk.chub.spoke.startup.Bootstrap"
# if you want to set java vm machine, here is the place
#JAVA_OPTS="-server -Xms2048m -Xmx2048m -XX:PermSize=256M -XX:MaxPermSize=512M"

eval $_EXECJAVA $JAVA_OPTS -classpath \"$CLASSPATH\"  -Dserver.home.dir=\"$SERVER_HOME\"  -Djava.library.path=\"$SERVER_HOME/lib/native\" -Djava.net.preferIPv4Stack=true $MAINCLASS "$@"
