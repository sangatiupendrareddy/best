from openjdk:16-alpine3.13
maintainer "rrr"
label "java"
copy best-1.0-SNAPSHOT.jar /opt/reddy
entrypoint echo "hi all"
expose 88



