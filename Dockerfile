# Note.
FROM jupyter/scipy-notebook:latest

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

    

