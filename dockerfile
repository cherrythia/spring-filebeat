FROM docker.elastic.co/beats/filebeat:8.6.2

FROM registry.access.redhat.com/ubi8/openjdk-17

COPY --from=0 /usr/share/filebeat/filebeat .
COPY filebeat.yml .

COPY demo/target/demo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT [ "sh","-c","java -jar app.jar & /home/jboss/filebeat -c /home/jboss/filebeat.yml -strict.perms=false && fg" ]