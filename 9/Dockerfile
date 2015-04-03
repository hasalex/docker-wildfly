FROM sewatech/wildfly
MAINTAINER Alexis Hassler <alexis@sewatech.org>

RUN /wildfly/bin/add-user.sh --silent admin passw0rd!

COPY desc.txt /
COPY standalone.conf /wildfly/bin/

WORKDIR /wildfly

EXPOSE 8080 9990

ENTRYPOINT []
CMD ["/wildfly/bin/standalone.sh"]
