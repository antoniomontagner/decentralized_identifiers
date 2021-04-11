# Note.
FROM jupyter/scipy-notebook:latest


RUN apt-get update
RUN apt-get upgrade
RUN apt-get install gnupg2
RUN apt-get install gnupg

RUN apt-get install software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88
RUN add-apt-repository "deb https://repo.sovrin.org/sdk/deb bionic master"
RUN apt-get update
RUN apt-get install -y libindy


RUN apt-get install python3-pip

RUN pip3 install python3-indy
RUN pip install python3-indy

    

