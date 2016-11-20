#!/bin/sh

dnf update --assumeyes &&
	cp /opt/docker/docker.repo /etc/yum.repos.d &&
	chmod 0644 /etc/yum.repos.d/docker.repo &&
	dnf install --assumeyes docker-engine &&
	systemctl enable docker.service &&
	dnf install --assumeyes openssh &&
	dnf install --assumeyes git &&
	dnf install --assumeyes bash &&
	git config --global user.email "${GIT_EMAIL}" &&
	git config --global user.name "${GIT_NAME}" &&
	dnf update --assumeyes &&
	dnf clean all &&
	true

