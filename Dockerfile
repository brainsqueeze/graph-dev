# this is adapted from https://github.com/bricaud/gremlin-server
FROM openjdk:8-alpine

ARG VERSION=3.5.1

RUN apk update && apk add wget unzip git bash curl ca-certificates && update-ca-certificates
RUN wget -O /gremlin.zip https://dlcdn.apache.org/tinkerpop/${VERSION}/apache-tinkerpop-gremlin-server-${VERSION}-bin.zip && \
    unzip /gremlin.zip -d /gremlin && \
    rm /gremlin.zip

WORKDIR /gremlin/apache-tinkerpop-gremlin-server-${VERSION}

EXPOSE 8182

RUN addgroup -S gremlin && adduser -S -s /bin/false -G gremlin gremlin
RUN chown -R gremlin:gremlin /gremlin/apache-tinkerpop-gremlin-server-${VERSION}
USER gremlin

RUN chmod 700 bin/gremlin-server.sh

COPY graph_conf .

ENTRYPOINT [ "bin/gremlin-server.sh", "gremlin-server.yaml" ]