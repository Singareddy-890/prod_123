ls
clear
pwd
cd 
ls
cd Favorites/
ls
ls
cd 
cd OneDrive/
ls
git push 
git stuas
git stusas
git status
ls
git status
git config
git commit-m
git config
git config
cd
pwd
cd
ls
cd AppData/
ls
cd
ls
git status
git pull origin
ls
pwd
ls
cd 
cd desktop
ls
 cd Documents/
ls
git push
 v
gitint
gitint
https://github.com/Singareddy-890/Test-123.git git push
https://github.com/Singareddy-890/Test-123.git git pull
https://github.com/Singareddy-890/Test-123.git
git int
git commit
ls
cd 
pwd
ls
git pull
git origin
ls
cd Links/
ls
vi
pwd
ls
cd Downloads/
ls
git 
git pull 
clear
pwd
ls
ls Harikrishna\ resume
ll
[200~mahesh sign.pdf'~
ls


git pull
git push
git push Harikrishna\ resume
git push origin  Harikrishna\ resume
git push origin feature
git push origin my-feature
git clone C:\Users\mahes\Downloads\.git
#! /bin/sh
#
# Copyright (c) 1999, 2006 Tanuki Software Inc.
#
# Java Service Wrapper sh script.  Suitable for starting and stopping
#  wrapped Java applications on UNIX platforms.
#
#-----------------------------------------------------------------------------
# These settings can be modified to fit the needs of your application
# Default values for the Application variables, below. 
# 
# NOTE: The build for specific applications may override this during the resource-copying
# phase, to fill in a concrete name and avoid the use of the defaults specified here.
DEF_APP_NAME="SonarQube"
DEF_APP_LONG_NAME="SonarQube"
# Application
APP_NAME="${DEF_APP_NAME}"
APP_LONG_NAME="${DEF_APP_LONG_NAME}"
# Wrapper
WRAPPER_CMD="./wrapper"
WRAPPER_CONF="../../conf/wrapper.conf"
SHUTDOWNER_LIB_DIR="../../lib"
# Priority at which to run the wrapper.  See "man nice" for valid priorities.
#  nice is only used if a priority is specified.
PRIORITY=
# Location of the pid file.
PIDDIR="."
# If uncommented, causes the Wrapper to be shutdown using an anchor file.
#  When launched with the 'start' command, it will also ignore all INT and
#  TERM signals.
#IGNORE_SIGNALS=true
# If specified, the Wrapper will be run as the specified user.
# IMPORTANT - Make sure that the user has the required privileges to write
#  the PID file and wrapper.log files.  Failure to be able to write the log
#  file will cause the Wrapper to exit without any way to write out an error
#  message.
# NOTE - This will set the user which is used to run the Wrapper as well as
#  the JVM and is not useful in situations where a privileged resource or
#  port needs to be allocated prior to the user being changed.
#RUN_AS_USER=
# The following two lines are used by the chkconfig command. Change as is
#  appropriate for your application.  They should remain commented.
# chkconfig: 2345 20 80
# description: Test Wrapper Sample Application
# Do not modify anything beyond this point
#-----------------------------------------------------------------------------
# Get the fully qualified path to the script
case $0 in     /*)         SCRIPT="$0";         ;;     *)         PWD=`pwd`;         SCRIPT="$PWD/$0";         ;; esac
# Resolve the true real path without any sym links.
CHANGED=true
while [ "X$CHANGED" != "X" ]; do
    SAFESCRIPT=`echo $SCRIPT | sed -e 's; ;:;g'`
    TOKENS=`echo $SAFESCRIPT | sed -e 's;/; ;g'`;     REALPATH=;     for C in $TOKENS; do
        C=`echo $C | sed -e 's;:; ;g'`;         REALPATH="$REALPATH/$C"
        while [ -h "$REALPATH" ] ; do             LS="`ls -ld "$REALPATH"`";             LINK="`expr "$LS" : '.*-> \(.*\)$'`";             if expr "$LINK" : '/.*' > /dev/null; then
                REALPATH="$LINK";             else
                REALPATH="`dirname "$REALPATH"`""/$LINK";             fi;         done;     done     if [ "$REALPATH" = "$SCRIPT" ];     then         CHANGED="";     else         SCRIPT="$REALPATH";     fi; done
# Change the current directory to the location of the script
cd "`dirname "$REALPATH"`"
REALDIR=`pwd`
# If the PIDDIR is relative, set its value relative to the full REALPATH to avoid problems if
#  the working directory is later changed.
FIRST_CHAR=`echo $PIDDIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     PIDDIR=$REALDIR/$PIDDIR; fi
# Same test for WRAPPER_CMD
FIRST_CHAR=`echo $WRAPPER_CMD | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CMD=$REALDIR/$WRAPPER_CMD; fi
# Same test for WRAPPER_CONF
FIRST_CHAR=`echo $WRAPPER_CONF | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CONF=$REALDIR/$WRAPPER_CONF; fi
# Same test for SHUTDOWNER_LIB_DIR
FIRST_CHAR=`echo $SHUTDOWNER_LIB_DIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     SHUTDOWNER_LIB_DIR=$REALDIR/$SHUTDOWNER_LIB_DIR; fi
# Process ID
ANCHORFILE="$PIDDIR/$APP_NAME.anchor"
PIDFILE="$PIDDIR/$APP_NAME.pid"
LOCKDIR="/var/lock/subsys"
LOCKFILE="$LOCKDIR/$APP_NAME"
pid=""
# Resolve the location of the 'ps' command
PSEXE="/usr/bin/ps"
if [ ! -x "$PSEXE" ]; then     PSEXE="/bin/ps";     if [ ! -x "$PSEXE" ];     then         echo "Unable to locate 'ps'.";         echo "Please report this message along with the location of the command on your system.";         exit 1;     fi; fi
# Resolve the os
DIST_OS=`uname -s | tr [:upper:] [:lower:] | tr -d [:blank:]`
case "$DIST_OS" in     'sunos')         DIST_OS="solaris";         ;;     'hp-ux' | 'hp-ux64')         DIST_OS="hpux";         ;;     'darwin')         DIST_OS="macosx";         ;;     'unix_sv')         DIST_OS="unixware";         ;; esac
# Resolve the architecture
DIST_ARCH=`uname -p | tr [:upper:] [:lower:] | tr -d [:blank:]`
if [ "$DIST_ARCH" = "unknown" ]; then     DIST_ARCH=`uname -m | tr [:upper:] [:lower:] | tr -d [:blank:]`; fi
case "$DIST_ARCH" in     'amd64' | 'athlon' | 'ia32' | 'ia64' | 'i386' | 'i486' | 'i586' | 'i686' | 'x86_64')         DIST_ARCH="x86";         ;;     'ip27')         DIST_ARCH="mips";         ;;     'power' | 'powerpc' | 'power_pc' | 'ppc64')         DIST_ARCH="ppc";         ;;     'pa_risc' | 'pa-risc')         DIST_ARCH="parisc";         ;;     'sun4u' | 'sparcv9')         DIST_ARCH="sparc";         ;;     '9000/800')         DIST_ARCH="parisc";         ;; esac
outputFile() {     if [ -f "$1" ];     then         echo "  $1 (Found but not executable.)";     else         echo "  $1";     fi; }
# Decide on the wrapper binary to use.
# If a 32-bit wrapper binary exists then it will work on 32 or 64 bit
#  platforms, if the 64-bit binary exists then the distribution most
#  likely wants to use long names.  Otherwise, look for the default.
# For macosx, we also want to look for universal binaries.
WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32"
if [ -x "$WRAPPER_TEST_CMD" ]; then     WRAPPER_CMD="$WRAPPER_TEST_CMD"; else     if [ "$DIST_OS" = "macosx" ];     then         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-32";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";             if [ -x "$WRAPPER_TEST_CMD" ];             then                 WRAPPER_CMD="$WRAPPER_TEST_CMD";             else                 WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-64";                 if [ -x "$WRAPPER_TEST_CMD" ];                 then                     WRAPPER_CMD="$WRAPPER_TEST_CMD";                 else                     if [ ! -x "$WRAPPER_CMD" ];                     then                         echo "Unable to locate any of the following binaries:";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-64";                         outputFile "$WRAPPER_CMD";                         exit 1;                     fi;                 fi;             fi;         fi;     else         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             if [ ! -x "$WRAPPER_CMD" ];             then                 echo "Unable to locate any of the following binaries:";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                 outputFile "$WRAPPER_CMD";                 exit 1;             fi;         fi;     fi; fi
#! /bin/sh
#
# Copyright (c) 1999, 2006 Tanuki Software Inc.
#
# Java Service Wrapper sh script.  Suitable for starting and stopping
#  wrapped Java applications on UNIX platforms.
#
#-----------------------------------------------------------------------------
# These settings can be modified to fit the needs of your application
# Default values for the Application variables, below. 
# 
# NOTE: The build for specific applications may override this during the resource-copying
# phase, to fill in a concrete name and avoid the use of the defaults specified here.
DEF_APP_NAME="SonarQube"
DEF_APP_LONG_NAME="SonarQube"
# Application
APP_NAME="${DEF_APP_NAME}"
APP_LONG_NAME="${DEF_APP_LONG_NAME}"
# Wrapper
WRAPPER_CMD="./wrapper"
WRAPPER_CONF="../../conf/wrapper.conf"
SHUTDOWNER_LIB_DIR="../../lib"
# Priority at which to run the wrapper.  See "man nice" for valid priorities.
#  nice is only used if a priority is specified.
PRIORITY=
# Location of the pid file.
PIDDIR="."
# If uncommented, causes the Wrapper to be shutdown using an anchor file.
#  When launched with the 'start' command, it will also ignore all INT and
#  TERM signals.
#IGNORE_SIGNALS=true
# If specified, the Wrapper will be run as the specified user.
# IMPORTANT - Make sure that the user has the required privileges to write
#  the PID file and wrapper.log files.  Failure to be able to write the log
#  file will cause the Wrapper to exit without any way to write out an error
#  message.
# NOTE - This will set the user which is used to run the Wrapper as well as
#  the JVM and is not useful in situations where a privileged resource or
#  port needs to be allocated prior to the user being changed.
#RUN_AS_USER=
# The following two lines are used by the chkconfig command. Change as is
#  appropriate for your application.  They should remain commented.
# chkconfig: 2345 20 80
# description: Test Wrapper Sample Application
# Do not modify anything beyond this point
#-----------------------------------------------------------------------------
# Get the fully qualified path to the script
case $0 in     /*)         SCRIPT="$0";         ;;     *)         PWD=`pwd`;         SCRIPT="$PWD/$0";         ;; esac
# Resolve the true real path without any sym links.
CHANGED=true
while [ "X$CHANGED" != "X" ]; do
    SAFESCRIPT=`echo $SCRIPT | sed -e 's; ;:;g'`
    TOKENS=`echo $SAFESCRIPT | sed -e 's;/; ;g'`;     REALPATH=;     for C in $TOKENS; do
        C=`echo $C | sed -e 's;:; ;g'`;         REALPATH="$REALPATH/$C"
        while [ -h "$REALPATH" ] ; do             LS="`ls -ld "$REALPATH"`";             LINK="`expr "$LS" : '.*-> \(.*\)$'`";             if expr "$LINK" : '/.*' > /dev/null; then
                REALPATH="$LINK";             else
                REALPATH="`dirname "$REALPATH"`""/$LINK";             fi;         done;     done     if [ "$REALPATH" = "$SCRIPT" ];     then         CHANGED="";     else         SCRIPT="$REALPATH";     fi; done
# Change the current directory to the location of the script
cd "`dirname "$REALPATH"`"
REALDIR=`pwd`
# If the PIDDIR is relative, set its value relative to the full REALPATH to avoid problems if
#  the working directory is later changed.
FIRST_CHAR=`echo $PIDDIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     PIDDIR=$REALDIR/$PIDDIR; fi
# Same test for WRAPPER_CMD
FIRST_CHAR=`echo $WRAPPER_CMD | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CMD=$REALDIR/$WRAPPER_CMD; fi
# Same test for WRAPPER_CONF
FIRST_CHAR=`echo $WRAPPER_CONF | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CONF=$REALDIR/$WRAPPER_CONF; fi
# Same test for SHUTDOWNER_LIB_DIR
FIRST_CHAR=`echo $SHUTDOWNER_LIB_DIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     SHUTDOWNER_LIB_DIR=$REALDIR/$SHUTDOWNER_LIB_DIR; fi
# Process ID
ANCHORFILE="$PIDDIR/$APP_NAME.anchor"
PIDFILE="$PIDDIR/$APP_NAME.pid"
LOCKDIR="/var/lock/subsys"
LOCKFILE="$LOCKDIR/$APP_NAME"
pid=""
# Resolve the location of the 'ps' command
PSEXE="/usr/bin/ps"
if [ ! -x "$PSEXE" ]; then     PSEXE="/bin/ps";     if [ ! -x "$PSEXE" ];     then         echo "Unable to locate 'ps'.";         echo "Please report this message along with the location of the command on your system.";         exit 1;     fi; fi
# Resolve the os
DIST_OS=`uname -s | tr [:upper:] [:lower:] | tr -d [:blank:]`
case "$DIST_OS" in     'sunos')         DIST_OS="solaris";         ;;     'hp-ux' | 'hp-ux64')         DIST_OS="hpux";         ;;     'darwin')         DIST_OS="macosx";         ;;     'unix_sv')         DIST_OS="unixware";         ;; esac
# Resolve the architecture
DIST_ARCH=`uname -p | tr [:upper:] [:lower:] | tr -d [:blank:]`
if [ "$DIST_ARCH" = "unknown" ]; then     DIST_ARCH=`uname -m | tr [:upper:] [:lower:] | tr -d [:blank:]`; fi
case "$DIST_ARCH" in     'amd64' | 'athlon' | 'ia32' | 'ia64' | 'i386' | 'i486' | 'i586' | 'i686' | 'x86_64')         DIST_ARCH="x86";         ;;     'ip27')         DIST_ARCH="mips";         ;;     'power' | 'powerpc' | 'power_pc' | 'ppc64')         DIST_ARCH="ppc";         ;;     'pa_risc' | 'pa-risc')         DIST_ARCH="parisc";         ;;     'sun4u' | 'sparcv9')         DIST_ARCH="sparc";         ;;     '9000/800')         DIST_ARCH="parisc";         ;; esac
outputFile() {     if [ -f "$1" ];     then         echo "  $1 (Found but not executable.)";     else         echo "  $1";     fi; }
# Decide on the wrapper binary to use.
# If a 32-bit wrapper binary exists then it will work on 32 or 64 bit
#  platforms, if the 64-bit binary exists then the distribution most
#  likely wants to use long names.  Otherwise, look for the default.
# For macosx, we also want to look for universal binaries.
WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32"
if [ -x "$WRAPPER_TEST_CMD" ]; then     WRAPPER_CMD="$WRAPPER_TEST_CMD"; else     if [ "$DIST_OS" = "macosx" ];     then         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-32";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";             if [ -x "$WRAPPER_TEST_CMD" ];             then                 WRAPPER_CMD="$WRAPPER_TEST_CMD";             else                 WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-64";                 if [ -x "$WRAPPER_TEST_CMD" ];                 then                     WRAPPER_CMD="$WRAPPER_TEST_CMD";                 else                     if [ ! -x "$WRAPPER_CMD" ];                     then                         echo "Unable to locate any of the following binaries:";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-64";                         outputFile "$WRAPPER_CMD";                         exit 1;                     fi;                 fi;             fi;         fi;     else         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             if [ ! -x "$WRAPPER_CMD" ];             then                 echo "Unable to locate any of the following binaries:";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                 outputFile "$WRAPPER_CMD";                 exit 1;             fi;         fi;     fi; fi
#! /bin/sh
#
# Copyright (c) 1999, 2006 Tanuki Software Inc.
#
# Java Service Wrapper sh script.  Suitable for starting and stopping
#  wrapped Java applications on UNIX platforms.
#
#-----------------------------------------------------------------------------
# These settings can be modified to fit the needs of your application
# Default values for the Application variables, below. 
# 
# NOTE: The build for specific applications may override this during the resource-copying
# phase, to fill in a concrete name and avoid the use of the defaults specified here.
DEF_APP_NAME="SonarQube"
DEF_APP_LONG_NAME="SonarQube"
# Application
APP_NAME="${DEF_APP_NAME}"
APP_LONG_NAME="${DEF_APP_LONG_NAME}"
# Wrapper
WRAPPER_CMD="./wrapper"
WRAPPER_CONF="../../conf/wrapper.conf"
SHUTDOWNER_LIB_DIR="../../lib"
# Priority at which to run the wrapper.  See "man nice" for valid priorities.
#  nice is only used if a priority is specified.
PRIORITY=
# Location of the pid file.
PIDDIR="."
# If uncommented, causes the Wrapper to be shutdown using an anchor file.
#  When launched with the 'start' command, it will also ignore all INT and
#  TERM signals.
#IGNORE_SIGNALS=true
# If specified, the Wrapper will be run as the specified user.
# IMPORTANT - Make sure that the user has the required privileges to write
#  the PID file and wrapper.log files.  Failure to be able to write the log
#  file will cause the Wrapper to exit without any way to write out an error
#  message.
# NOTE - This will set the user which is used to run the Wrapper as well as
#  the JVM and is not useful in situations where a privileged resource or
#  port needs to be allocated prior to the user being changed.
#RUN_AS_USER=
# The following two lines are used by the chkconfig command. Change as is
#  appropriate for your application.  They should remain commented.
# chkconfig: 2345 20 80
# description: Test Wrapper Sample Application
# Do not modify anything beyond this point
#-----------------------------------------------------------------------------
# Get the fully qualified path to the script
case $0 in     /*)         SCRIPT="$0";         ;;     *)         PWD=`pwd`;         SCRIPT="$PWD/$0";         ;; esac
# Resolve the true real path without any sym links.
CHANGED=true
while [ "X$CHANGED" != "X" ]; do
    SAFESCRIPT=`echo $SCRIPT | sed -e 's; ;:;g'`
    TOKENS=`echo $SAFESCRIPT | sed -e 's;/; ;g'`;     REALPATH=;     for C in $TOKENS; do
        C=`echo $C | sed -e 's;:; ;g'`;         REALPATH="$REALPATH/$C"
        while [ -h "$REALPATH" ] ; do             LS="`ls -ld "$REALPATH"`";             LINK="`expr "$LS" : '.*-> \(.*\)$'`";             if expr "$LINK" : '/.*' > /dev/null; then
                REALPATH="$LINK";             else
                REALPATH="`dirname "$REALPATH"`""/$LINK";             fi;         done;     done     if [ "$REALPATH" = "$SCRIPT" ];     then         CHANGED="";     else         SCRIPT="$REALPATH";     fi; done
# Change the current directory to the location of the script
cd "`dirname "$REALPATH"`"
REALDIR=`pwd`
# If the PIDDIR is relative, set its value relative to the full REALPATH to avoid problems if
#  the working directory is later changed.
FIRST_CHAR=`echo $PIDDIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     PIDDIR=$REALDIR/$PIDDIR; fi
# Same test for WRAPPER_CMD
FIRST_CHAR=`echo $WRAPPER_CMD | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CMD=$REALDIR/$WRAPPER_CMD; fi
# Same test for WRAPPER_CONF
FIRST_CHAR=`echo $WRAPPER_CONF | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CONF=$REALDIR/$WRAPPER_CONF; fi
# Same test for SHUTDOWNER_LIB_DIR
FIRST_CHAR=`echo $SHUTDOWNER_LIB_DIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     SHUTDOWNER_LIB_DIR=$REALDIR/$SHUTDOWNER_LIB_DIR; fi
# Process ID
ANCHORFILE="$PIDDIR/$APP_NAME.anchor"
PIDFILE="$PIDDIR/$APP_NAME.pid"
LOCKDIR="/var/lock/subsys"
LOCKFILE="$LOCKDIR/$APP_NAME"
pid=""
# Resolve the location of the 'ps' command
PSEXE="/usr/bin/ps"
if [ ! -x "$PSEXE" ]; then     PSEXE="/bin/ps";     if [ ! -x "$PSEXE" ];     then         echo "Unable to locate 'ps'.";         echo "Please report this message along with the location of the command on your system.";         exit 1;     fi; fi
# Resolve the os
DIST_OS=`uname -s | tr [:upper:] [:lower:] | tr -d [:blank:]`
case "$DIST_OS" in     'sunos')         DIST_OS="solaris";         ;;     'hp-ux' | 'hp-ux64')         DIST_OS="hpux";         ;;     'darwin')         DIST_OS="macosx";         ;;     'unix_sv')         DIST_OS="unixware";         ;; esac
# Resolve the architecture
DIST_ARCH=`uname -p | tr [:upper:] [:lower:] | tr -d [:blank:]`
if [ "$DIST_ARCH" = "unknown" ]; then     DIST_ARCH=`uname -m | tr [:upper:] [:lower:] | tr -d [:blank:]`; fi
case "$DIST_ARCH" in     'amd64' | 'athlon' | 'ia32' | 'ia64' | 'i386' | 'i486' | 'i586' | 'i686' | 'x86_64')         DIST_ARCH="x86";         ;;     'ip27')         DIST_ARCH="mips";         ;;     'power' | 'powerpc' | 'power_pc' | 'ppc64')         DIST_ARCH="ppc";         ;;     'pa_risc' | 'pa-risc')         DIST_ARCH="parisc";         ;;     'sun4u' | 'sparcv9')         DIST_ARCH="sparc";         ;;     '9000/800')         DIST_ARCH="parisc";         ;; esac
outputFile() {     if [ -f "$1" ];     then         echo "  $1 (Found but not executable.)";     else         echo "  $1";     fi; }
# Decide on the wrapper binary to use.
# If a 32-bit wrapper binary exists then it will work on 32 or 64 bit
#  platforms, if the 64-bit binary exists then the distribution most
#  likely wants to use long names.  Otherwise, look for the default.
# For macosx, we also want to look for universal binaries.
WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32"
if [ -x "$WRAPPER_TEST_CMD" ]; then     WRAPPER_CMD="$WRAPPER_TEST_CMD"; else     if [ "$DIST_OS" = "macosx" ];     then         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-32";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";             if [ -x "$WRAPPER_TEST_CMD" ];             then                 WRAPPER_CMD="$WRAPPER_TEST_CMD";             else                 WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-64";                 if [ -x "$WRAPPER_TEST_CMD" ];                 then                     WRAPPER_CMD="$WRAPPER_TEST_CMD";                 else                     if [ ! -x "$WRAPPER_CMD" ];                     then                         echo "Unable to locate any of the following binaries:";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-64";                         outputFile "$WRAPPER_CMD";                         exit 1;                     fi;                 fi;             fi;         fi;     else         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             if [ ! -x "$WRAPPER_CMD" ];             then                 echo "Unable to locate any of the following binaries:";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                 outputFile "$WRAPPER_CMD";                 exit 1;             fi;         fi;     fi; fi
#! /bin/sh
#
# Copyright (c) 1999, 2006 Tanuki Software Inc.
#
# Java Service Wrapper sh script.  Suitable for starting and stopping
#  wrapped Java applications on UNIX platforms.
#
#-----------------------------------------------------------------------------
# These settings can be modified to fit the needs of your application
# Default values for the Application variables, below. 
# 
# NOTE: The build for specific applications may override this during the resource-copying
# phase, to fill in a concrete name and avoid the use of the defaults specified here.
DEF_APP_NAME="SonarQube"
DEF_APP_LONG_NAME="SonarQube"
# Application
APP_NAME="${DEF_APP_NAME}"
APP_LONG_NAME="${DEF_APP_LONG_NAME}"
# Wrapper
WRAPPER_CMD="./wrapper"
WRAPPER_CONF="../../conf/wrapper.conf"
SHUTDOWNER_LIB_DIR="../../lib"
# Priority at which to run the wrapper.  See "man nice" for valid priorities.
#  nice is only used if a priority is specified.
PRIORITY=
# Location of the pid file.
PIDDIR="."
# If uncommented, causes the Wrapper to be shutdown using an anchor file.
#  When launched with the 'start' command, it will also ignore all INT and
#  TERM signals.
#IGNORE_SIGNALS=true
# If specified, the Wrapper will be run as the specified user.
# IMPORTANT - Make sure that the user has the required privileges to write
#  the PID file and wrapper.log files.  Failure to be able to write the log
#  file will cause the Wrapper to exit without any way to write out an error
#  message.
# NOTE - This will set the user which is used to run the Wrapper as well as
#  the JVM and is not useful in situations where a privileged resource or
#  port needs to be allocated prior to the user being changed.
#RUN_AS_USER=
# The following two lines are used by the chkconfig command. Change as is
#  appropriate for your application.  They should remain commented.
# chkconfig: 2345 20 80
# description: Test Wrapper Sample Application
# Do not modify anything beyond this point
#-----------------------------------------------------------------------------
# Get the fully qualified path to the script
case $0 in     /*)         SCRIPT="$0";         ;;     *)         PWD=`pwd`;         SCRIPT="$PWD/$0";         ;; esac
# Resolve the true real path without any sym links.
CHANGED=true
while [ "X$CHANGED" != "X" ]; do
    SAFESCRIPT=`echo $SCRIPT | sed -e 's; ;:;g'`
    TOKENS=`echo $SAFESCRIPT | sed -e 's;/; ;g'`;     REALPATH=;     for C in $TOKENS; do
        C=`echo $C | sed -e 's;:; ;g'`;         REALPATH="$REALPATH/$C"
        while [ -h "$REALPATH" ] ; do             LS="`ls -ld "$REALPATH"`";             LINK="`expr "$LS" : '.*-> \(.*\)$'`";             if expr "$LINK" : '/.*' > /dev/null; then
                REALPATH="$LINK";             else
                REALPATH="`dirname "$REALPATH"`""/$LINK";             fi;         done;     done     if [ "$REALPATH" = "$SCRIPT" ];     then         CHANGED="";     else         SCRIPT="$REALPATH";     fi; done
# Change the current directory to the location of the script
cd "`dirname "$REALPATH"`"
REALDIR=`pwd`
# If the PIDDIR is relative, set its value relative to the full REALPATH to avoid problems if
#  the working directory is later changed.
FIRST_CHAR=`echo $PIDDIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     PIDDIR=$REALDIR/$PIDDIR; fi
# Same test for WRAPPER_CMD
FIRST_CHAR=`echo $WRAPPER_CMD | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CMD=$REALDIR/$WRAPPER_CMD; fi
# Same test for WRAPPER_CONF
FIRST_CHAR=`echo $WRAPPER_CONF | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     WRAPPER_CONF=$REALDIR/$WRAPPER_CONF; fi
# Same test for SHUTDOWNER_LIB_DIR
FIRST_CHAR=`echo $SHUTDOWNER_LIB_DIR | cut -c1,1`
if [ "$FIRST_CHAR" != "/" ]; then     SHUTDOWNER_LIB_DIR=$REALDIR/$SHUTDOWNER_LIB_DIR; fi
# Process ID
ANCHORFILE="$PIDDIR/$APP_NAME.anchor"
PIDFILE="$PIDDIR/$APP_NAME.pid"
LOCKDIR="/var/lock/subsys"
LOCKFILE="$LOCKDIR/$APP_NAME"
pid=""
# Resolve the location of the 'ps' command
PSEXE="/usr/bin/ps"
if [ ! -x "$PSEXE" ]; then     PSEXE="/bin/ps";     if [ ! -x "$PSEXE" ];     then         echo "Unable to locate 'ps'.";         echo "Please report this message along with the location of the command on your system.";         exit 1;     fi; fi
# Resolve the os
DIST_OS=`uname -s | tr [:upper:] [:lower:] | tr -d [:blank:]`
case "$DIST_OS" in     'sunos')         DIST_OS="solaris";         ;;     'hp-ux' | 'hp-ux64')         DIST_OS="hpux";         ;;     'darwin')         DIST_OS="macosx";         ;;     'unix_sv')         DIST_OS="unixware";         ;; esac
# Resolve the architecture
DIST_ARCH=`uname -p | tr [:upper:] [:lower:] | tr -d [:blank:]`
if [ "$DIST_ARCH" = "unknown" ]; then     DIST_ARCH=`uname -m | tr [:upper:] [:lower:] | tr -d [:blank:]`; fi
case "$DIST_ARCH" in     'amd64' | 'athlon' | 'ia32' | 'ia64' | 'i386' | 'i486' | 'i586' | 'i686' | 'x86_64')         DIST_ARCH="x86";         ;;     'ip27')         DIST_ARCH="mips";         ;;     'power' | 'powerpc' | 'power_pc' | 'ppc64')         DIST_ARCH="ppc";         ;;     'pa_risc' | 'pa-risc')         DIST_ARCH="parisc";         ;;     'sun4u' | 'sparcv9')         DIST_ARCH="sparc";         ;;     '9000/800')         DIST_ARCH="parisc";         ;; esac
outputFile() {     if [ -f "$1" ];     then         echo "  $1 (Found but not executable.)";     else         echo "  $1";     fi; }
# Decide on the wrapper binary to use.
# If a 32-bit wrapper binary exists then it will work on 32 or 64 bit
#  platforms, if the 64-bit binary exists then the distribution most
#  likely wants to use long names.  Otherwise, look for the default.
# For macosx, we also want to look for universal binaries.
WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32"
if [ -x "$WRAPPER_TEST_CMD" ]; then     WRAPPER_CMD="$WRAPPER_TEST_CMD"; else     if [ "$DIST_OS" = "macosx" ];     then         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-32";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";             if [ -x "$WRAPPER_TEST_CMD" ];             then                 WRAPPER_CMD="$WRAPPER_TEST_CMD";             else                 WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-universal-64";                 if [ -x "$WRAPPER_TEST_CMD" ];                 then                     WRAPPER_CMD="$WRAPPER_TEST_CMD";                 else                     if [ ! -x "$WRAPPER_CMD" ];                     then                         echo "Unable to locate any of the following binaries:";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-32";                         outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                         outputFile "$WRAPPER_CMD-$DIST_OS-universal-64";                         outputFile "$WRAPPER_CMD";                         exit 1;                     fi;                 fi;             fi;         fi;     else         WRAPPER_TEST_CMD="$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";         if [ -x "$WRAPPER_TEST_CMD" ];         then             WRAPPER_CMD="$WRAPPER_TEST_CMD";         else             if [ ! -x "$WRAPPER_CMD" ];             then                 echo "Unable to locate any of the following binaries:";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-32";                 outputFile "$WRAPPER_CMD-$DIST_OS-$DIST_ARCH-64";                 outputFile "$WRAPPER_CMD";                 exit 1;             fi;         fi;     fi; fi
git clone https://git-codecommit.us-west-2.amazonaws.com/v1/repos/pie-patient-flow-be
 git clone C:\Users\mahes\Downloads\sonar-scanner-cli-4.7.0.2747-windows.zip\sonar-scanner-4.7.0.2747-windows
git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/Patient-_flow123
clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/Patient-_flow123
git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/Patient-_flow123
get-commit
aws codecommit get-commit
run
27b3b4a7
code commit 27b3b4a7
aws codecommit get-commit  --repositroy-name MYDEMOREPO   --commit -id 27b3b4a7
aws codecommit get-commit  --repositroy-name MYDEMOREPO   --commit-id 27b3b4a7
CLEAR
cd /c/Users/mahes/OneDrive/Desktop
git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/TESTREPO
cd /c/Users/mahes/OneDrive/Desktop/TESTREPO
git add demo .txt
git add.txt
git add demo
git add .txt
git add demo .txt
git add demo
git add
git commit -m "first commit"
git push
git add.
git add .
git commit -m "first commit"
git commit -m
git commit -m "first commit"
git push
git merge
