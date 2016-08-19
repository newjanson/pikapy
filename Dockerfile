FROM phusion/baseimage:latest

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y chromium-browser python python-pip git build-essential libssl-dev libffi-dev python-dev unzip wget x11vnc xvfb 
RUN pip install --upgrade pip

COPY . /usr/src/app/
RUN for r in `cat requirements.txt`; do pip install $r; done
RUN pip install .

RUN wget http://chromedriver.storage.googleapis.com/2.23/chromedriver_linux64.zip \
    && unzip chromedriver_linux64.zip -d /usr/bin \
    && rm chromedriver_linux64.zip \
    && cd /usr/bin \
    && chmod a+x chromedriver

RUN mkdir ~/.vnc \
    && x11vnc -storepasswd pikapy ~/.vnc/passwd

EXPOSE 5900

ENTRYPOINT ["x11vnc", "-forever", "-usepw", "-create"]
