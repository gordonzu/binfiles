#!/bin/bash

mvn archetype:generate \
        -DarchetypeGroupId=pl.codeleak \
        -DarchetypeArtifactId=spring-mvc-quickstart \
        -DarchetypeVersion=1.0.1 \
        -DgroupId=com.gordonzu \
        -DartifactId=spring-mvc \
        -Dversion=1.0 \
        -DarchetypeRepository=http://kolorobot.github.io/spring-mvc-quickstart-archetype


