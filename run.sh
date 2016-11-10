#!/bin/sh

apk update &&
	apk upgrade &&
	apk add openssh &&
	apk add git &&
	apk add docker &&
	apk add bash &&
	true

