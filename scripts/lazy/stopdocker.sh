#!/usr/bin/bash

# shuts off docker daemon when im done with it. because im lazy
systemctl stop docker

systemctl stop docker.socket