FROM sewatech/java:8
MAINTAINER Alexis Hassler <alexis.hassler@sewatech.fr>

ENV WILDFLY_VERSION 9.0.0.CR1-SNAPSHOT

USER root

RUN (curl -skL https://bintray.com/artifact/download/wfdemo/wildfly/wildfly.tar.gz | tar xfz -) && \
    mv /wildfly-$WILDFLY_VERSION /wildfly &&\
    chown -R java:java /wildfly &&\
    /wildfly/bin/add-user.sh --silent admin passw0rd!

USER java

EXPOSE 8080 9990

ENTRYPOINT ["/wildfly/bin/standalone.sh"]
CMD ["-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
