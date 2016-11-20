FROM fedora:24
MAINTAINER Emory Merryman emory.merryman@gmail.com
COPY run.sh docker.repo /opt/docker/
RUN ["/bin/sh", "/opt/docker/run.sh"]
ENTRYPOINT ["/bin/bash"]
CMD []


