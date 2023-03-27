FROM registry.access.redhat.com/ubi8/openjdk-17

USER root

COPY filebeat/ /home/jboss/filebeat7
COPY demo/target/demo-0.0.1-SNAPSHOT.jar app.jar
COPY start.sh .

RUN ls

RUN chmod +x start.sh

# CMD ./start.sh

ENTRYPOINT [ "sh","-c","java -jar app.jar & /home/jboss/filebeat7/filebeat -c /home/jboss/filebeat7/filebeat.yml -strict.perms=false && fg" ]