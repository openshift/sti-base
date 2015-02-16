FROM centos:centos7

# This image is an base image for OpenShift v3 Docker images.
# It includes all dependencies that users might need to debug broken
# applications or services as well as common build dependencies for all
# languages and frameworks.

MAINTAINER Jakub Hadvig <jhadvig@redhat.com>

RUN yum install -y --setopt=tsflags=nodocs \
    autoconf \
    automake \
    bsdtar \
    curl-devel \
    epel-release \
    gcc-c++ \
    gdb \
    gettext \
    libxml2-devel \
    libxslt-devel \
    lsof \
    mysql-devel \
    mysql-libs \
    openssl-devel \
    postgresql-devel \
    procps-ng \
    sqlite-devel \
    tar \
    unzip \
    wget \
    which \
    yum-utils \
    zlib-devel && \
    yum clean all -y
