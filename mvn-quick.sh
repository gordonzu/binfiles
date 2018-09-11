#!/bin/bash

companyName="com.gordonzu"
appName=$1
 
echo "====== MAVEN CREATION ================================"

mvn archetype:generate \
    -DinteractiveMode=false \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DgroupId="$companyName" \
    -DartifactId="$appName"
 
mkdir -p "$1/src/main/java/com/gordonzu"
#touch "$1/src/main/java/com/gordonzu/JAXRSConfiguration.java"
echo "====== DONE ========"
 



