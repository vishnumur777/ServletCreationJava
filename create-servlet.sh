#!/bin/bash

echo "Enter Folder name: ";read FOLDER;
echo "Enter class name: ";read CLASS;

sudo mkdir -p $FOLDER/WEB-INF/classes

cd $FOLDER/WEB-INF/classes;sudo nano $CLASS".java"

sudo javac $CLASS".java" -classpath /usr/share/tomcat10/lib/servlet-api.jar

cd ..;sudo cp /usr/share/tomcat10/webapps/ROOT/WEB-INF/web.xml web.xml;sudo nano web.xml
 
cd ..;sudo nano index.html

sleep 5

firefox "http://localhost:8080/$FOLDER"
