FROM openjdk:8u151-jdk
ENV JG_VERSION 0.2.0

RUN curl -fsSLO https://github.com/JanusGraph/janusgraph/releases/download/v${JG_VERSION}/janusgraph-${JG_VERSION}-hadoop2.zip && \
    unzip janusgraph-${JG_VERSION}-hadoop2.zip && \
    rm janusgraph-${JG_VERSION}-hadoop2.zip

WORKDIR janusgraph-${JG_VERSION}-hadoop2
COPY conf/gremlin-server/janusgraph-cassandra-es-server.properties conf/gremlin-server/janusgraph-cassandra-es-server.properties
CMD ["bin/gremlin-server.sh"]



