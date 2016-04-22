#PATH part
export MVN_HOME=/opt/apache-maven-3.3.9/
export PATH=/usr/local/openresty/nginx/sbin:~/local/bin/::$MVN_HOME/bin:$PATH;


#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export J2EE_HOME=/usr/lib/jvm/glassfish4
export CLASSPATH=./:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$J2EE_HOME/glassfish/lyp_modules/*:/opt/eclipse/eclipse/plugins/*:/usr/local/lib/java_lib/struts-2.3.24/lib/*;


#other part
export ANT_OPTS=-Dfile.encoding=UTF-8

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

