#!/bin/bash

mvn -DarchetypeGroupId=org.codehaus.mojo.archetypes 

    -DarchetypeArtifactId=webapp-javaee7 

    -DarchetypeVersion=0.3-SNAPSHOT 

    -DarchetypeRepository=https://nexus.codehaus.org/content/repositories/snapshots/ 

    -DgroupId=org.xulu 

    -DartifactId=jax-test 

    -Dversion=1.0

    -Dpackage=org.xulu

    -Darchetype.interactive=false 

    --batch-mode 

    --update-snapshots 

    archetype:generate

