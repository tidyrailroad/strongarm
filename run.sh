#!/bin/sh

apk update &&
	apk upgrade &&
	apk add openssh &&
	apk add git &&
	true

