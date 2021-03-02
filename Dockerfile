FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code/

RUN apt-get update
RUN apt-get install 'ffmpeg'\
    'libsm6'\
    'libxext6'  -y

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /code/