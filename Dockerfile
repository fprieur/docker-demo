FROM ubuntu:14.04

# Install Python Setuptools
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential python-setuptools python-dev build-essential chrpath wget libssl-dev libxft-dev unzip python git -y
RUN easy_install pip

RUN apt-get install libfreetype6 libfreetype6-dev -y
RUN apt-get install libfontconfig1 libfontconfig1-dev -y

# Bundle app source
ADD . /home

# Expose
WORKDIR /home

RUN pip install -r requirements.txt

CMD python demo.py
