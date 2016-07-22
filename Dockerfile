FROM java:8u72-jdk

RUN wget http://www-eu.apache.org/dist/incubator/tinkerpop/3.2.0-incubating/apache-gremlin-console-3.2.0-incubating-bin.zip 
RUN unzip apache-gremlin-console-3.2.0-incubating-bin.zip

WORKDIR apache-gremlin-console-3.2.0-incubating

CMD ["bin/gremlin.sh"]
