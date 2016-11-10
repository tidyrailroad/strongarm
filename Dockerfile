FROM alpine:3.4
COPY run.sh /opt/strongarm/
RUN ["/bin/sh", "/opt/strongarm/run.sh"]
VOLUME /root/.ssh
VOLUME /usr/local/src
VOLUME /root/bin
WORKDIR /usr/local/src
ENTRYPOINT ["/bin/bash"]
CMD []


