# Note.
FROM jupyter/scipy-notebook:latest

USER root

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}



RUN pip install --no-cache-dir notebook==5.*


RUN sudo apt-get update
RUN sudo apt-get upgrade
RUN sudo apt-get install gnupg2
RUN sudo apt-get install gnupg

RUN sudo apt-get install software-properties-common

RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88
RUN sudo add-apt-repository "deb https://repo.sovrin.org/sdk/deb bionic master"
RUN sudo apt-get update
RUN sudo apt-get install -y libindy


RUN sudo apt-get install python3-pip

RUN sudo pip3 install python3-indy
RUN sudo pip install python3-indy

    
