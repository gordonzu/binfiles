#!/bin/bash

echo setting java 9...
export JAVA_HOME="/usr/lib/jvm/jdk-9.0.1"
export PATH="$JAVA_HOME/bin:$PATH"
#sudo update-alternatives --set java /usr/lib/jvm/java-8-oracle/jre/bin/java
#sudo update-alternatives --set javac /usr/lib/jvm/java-8-oracle/bin/javac
java -version


