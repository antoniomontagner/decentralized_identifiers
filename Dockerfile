# Note.
FROM ubuntu:18.04

USER root

RUN  apt-get -y update
RUN  apt-get -y upgrade
RUN  apt-get -y install gnupg2
RUN  apt-get -y install gnupg

RUN  apt-get -y install software-properties-common

RUN  APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88
RUN  add-apt-repository "deb https://repo.sovrin.org/sdk/deb bionic master"
RUN  apt-get update
RUN  apt-get install -y libindy


RUN  apt-get -y install python3-pip

RUN pip install --no-cache-dir notebook==5.*
RUN pip install jupyterlab
RUN pip install notebook
RUN pip install voila

RUN  pip3 install python3-indy
RUN  pip install python3-indy
