FROM ubuntu:20.04
EXPOSE 8000
RUN apt update -y
RUN apt install python3.8 -y
RUN apt install vim -y
RUN apt install net-tools -y
RUN apt install iputils-ping -y
RUN apt install python3-pip -y

RUN apt update -y
#COPY ./ubuntu2004/requirements.txt /requirements.txt
#RUN pip3 install -r /requirements.txt

RUN apt update -y 
RUN apt install language-pack-ko -y
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8

RUN pip install django~=2.0.0
RUN mkdir djangogirls
RUN cd djangogirls
RUN django-admin startproject mysite .

#설정 변경 추가 예정

WORKDIR /root
RUN echo 'alias python=python3.8' >> .bashrc

WORKDIR /