FROM sewatech/wildfly
MAINTAINER Alexis Hassler <alexis@sewatech.org>

WORKDIR /wildfly

RUN bin/add-user.sh --silent admin passw0rd!

EXPOSE 8080 9990

ENTRYPOINT ["/wildfly/bin/standalone.sh"]
CMD ["-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
