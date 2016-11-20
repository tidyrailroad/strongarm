#!/bin/sh

dnf update --assumeyes &&
	cp /opt/docker/docker.repo /etc/yum.repos.d &&
	chmod 0644 /etc/yum.repos.d/docker.repo &&
	dnf install --assumeyes docker-engine &&
	systemctl enable docker.service &&
	dnf install --assumeyes openssh &&
	dnf install --assumeyes git &&
	dnf install --assumeyes bash &&
	dnf install --assumeyes bash-completion &&
	dnf install --assumeyes docker-zsh-completion &&
	dnf install --assumeyes docker-fish-completion &&
	dnf install --assumeyes docker-latest-zsh-completion &&
	dnf install --assumeyes git-tools &&
	dnf install --assumeyes gitflow &&
	dnf install --assumeyes meld &&
	git config --global user.email "${GIT_EMAIL}" &&
	git config --global user.name "${GIT_NAME}" &&
	dnf update --assumeyes &&
	dnf clean all &&
	true

