#this is configure for https://github.com/openjdk-mirror/jdk7u-jdk

export LANG=C;
export ALT_BOOTDIR=/usr/lib/jvm/java-7-openjdk-i386;
export ALT_JDK_IMPORT_PATH=/usr/lib/jvm/java-7-openjdk-i386

export ALLOW_DOWNLOADS=true                                                                                                                      
export USE_PRECOMPILED_HEADER=true    
export SKIP_DEBUG_BUILD=false    
export SKIP_FASTDEBUG_BUILD=true    
export DISABLE_HOTSPOT_OS_VERSION_CHECK=true    
export DEBUG_NAME=debug
export unset JAVA_HOME;
export unset CLASS_PATH
