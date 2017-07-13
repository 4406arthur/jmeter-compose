FROM alpine:3.5

MAINTAINER ArthurMa


# Install extra packages
RUN \
  apk update && \
  apk upgrade && \
  apk add ca-certificates && update-ca-certificates && \
  apk add --update openjdk8-jre tzdata curl bash && \
  # Clean APK cache
  rm -rf /var/cache/apk/*

# Install Jmeter
RUN \
  mkdir -p /tmp/jmeter_src && \
  mkdir -p /opt

ADD src/apache-jmeter-3.1.tar.gz /opt
#RUN tar -xzf /tmp/jmeter_src/apache-jmeter-3.1.tar.gz -C /opt && \
   # rm -rf /tmp/apache-jmeter-3.1


ENV JMETER_HOME /opt/apache-jmeter-3.1
ENV JMETER_BIN ${JMETER_HOME}/bin

# Set global PATH such that "jmeter" command is found
ENV PATH $PATH:$JMETER_BIN

WORKDIR ${JMETER_HOME}

ENTRYPOINT ["jmeter"]
