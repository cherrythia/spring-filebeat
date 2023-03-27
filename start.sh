#!/bin/sh

chmod -R 755 /home/jboss/filebeat7

ls -al 
pwd
ls -l /home/jboss/filebeat7/filebeat

java -jar app.jar &
/home/jboss/filebeat7/filebeat -c /home/jboss/filebeat7/filebeat.yml -strict.perms=false && fg
