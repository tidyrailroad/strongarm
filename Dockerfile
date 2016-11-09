FROM alpine:3.4
COPY run.sh entrypoint.sh /opt/strongarm/
RUN ["/bin/sh", "/opt/strongarm/run.sh"]
VOLUME /root/.ssh
VOLUME /usr/local/src
ENTRYPOINT ["/bin/sh", "/opt/strongarm/entrypoint.sh"]
CMD []


