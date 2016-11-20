FROM fedora:24
MAINTAINER Emory Merryman emory.merryman@gmail.com
COPY run.sh docker.repo entrypoint.sh /opt/docker/
RUN ["/bin/sh", "/opt/docker/run.sh"]
ENTRYPOINT ["/bin/sh", "/opt/docker/entrypoint.sh"]
CMD []


