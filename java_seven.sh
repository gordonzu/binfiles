#!/bin/bash

echo setting java 7...
export JAVA_HOME="/usr/lib/jvm/jdk1.7.0_80"
export PATH="$JAVA_HOME/bin:$PATH"
#sudo update-alternatives --set java /usr/lib/jvm/jdk1.7.0_80/jre/bin/java
#sudo update-alternatives --set javac /usr/lib/jvm/jdk1.7.0_80/bin/javac
java -version


