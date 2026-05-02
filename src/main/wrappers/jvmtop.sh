#!/bin/sh
# jvmtop - java monitoring for the command-line 
# launch script
#
# author: Markus Kolb
# 
DIR=$( cd $(dirname $0) ; pwd -P )

if [ -z "$JAVA_HOME" ] ; then
        JAVA_HOME=`readlink -f \`which java 2>/dev/null\` 2>/dev/null | \
        sed 's/\/bin\/java//'`
fi

 "$JAVA_HOME"/bin/java $JAVA_OPTS \
    --add-modules jdk.management.agent,jdk.internal.jvmstat,jdk.attach \
    --add-exports jdk.internal.jvmstat/sun.jvmstat.monitor=ALL-UNNAMED \
    --add-exports jdk.management.agent/jdk.internal.agent=ALL-UNNAMED \
    --add-exports java.rmi/sun.rmi.server=ALL-UNNAMED \
    --add-exports java.rmi/sun.rmi.transport=ALL-UNNAMED \
    -cp "$DIR/jvmtop.jar" \
com.jvmtop.JvmTop "$@"
exit $?
