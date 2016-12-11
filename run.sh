#!/bin/sh

apk update &&
    apk upgrade &&
    apk add docker &&
    rm --recursive --force /opt/docker &&
    true

