#Set Versions.
ARG FEDORA_VERSION=41
#Base image
FROM quay.io/foundata/fedora${FEDORA_VERSION}-itt:latest AS builder
#To avoid file permission error, set as root user. In docker, default user is root. With devcontainer and Podman, default user is the host user. 
USER root
#To run as non root, you can set the home to a different folder, but we are choosing to run as root for now.
# ENV HOME=/tmp
#Install dev packages, just git for now.
RUN dnf upgrade --refresh -y && dnf install -y python3-pip
RUN dnf upgrade --refresh -y && dnf install -y git python3 python3-devel gcc-c++ gdb make
RUN pip install setuptools wheel pybind11 pytest
