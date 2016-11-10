#!/bin/sh

apk update &&
	apk upgrade &&
	apk add openssh &&
	apk add git &&
	apk add docker &&
	apk add bash &&
	git config user.email "${GIT_EMAIL}" &&
	git config user.name "${GIT_NAME}" &&
	true

