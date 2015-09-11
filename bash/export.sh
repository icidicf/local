#PATH part
export SCALA_HOME=/opt/scala/scala-2.10.4
export MVN_HOME=/opt/maven/apache-maven-3.3.3
export PATH=~/local/bin/:$SCALA_HOME/bin:$MVN_HOME/bin:$PATH;



#JAVA part
export _JAVA_OPTIONS=-Xmx3072m

#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export J2EE_HOME=/usr/lib/jvm/glassfish4
export CLASSPATH=./:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$J2EE_HOME/glassfish/lyp_modules/*:/opt/eclipse/eclipse/plugins/*:/usr/local/lib/java_lib/struts-2.3.24/lib/*;


#other part
export ANT_OPTS=-Dfile.encoding=UTF-8
