FROM ubuntu

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get --assume-yes install build-essential
RUN mkdir project
WORKDIR /project
ADD ./project/*   .
RUN g++ -o holamundo  holaMundo.cpp  
CMD ./holamundo