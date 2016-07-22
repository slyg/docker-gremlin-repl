FROM java:8u72-jdk

ENV GREMLIN_VERSION 3.2.0-incubating

RUN wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/incubator/tinkerpop/${GREMLIN_VERSION}/apache-gremlin-console-${GREMLIN_VERSION}-bin.zip \
 && unzip apache-gremlin-console-${GREMLIN_VERSION}-bin.zip \
 && mv apache-gremlin-console-${GREMLIN_VERSION} gremlin

WORKDIR gremlin

CMD bin/gremlin.sh
