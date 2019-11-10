FROM tensorflow/tensorflow:latest-py3-jupyter

RUN pip install --upgrade pip
RUN pip install -q -U tfx==0.15.0rc0
RUN pip install -q -U tf-hub-nightly
RUN pip install Pillow

RUN echo "deb http://storage.googleapis.com/tensorflow-serving-apt stable tensorflow-model-server tensorflow-model-server-universal" | tee /etc/apt/sources.list.d/tensorflow-serving.list && \
curl https://storage.googleapis.com/tensorflow-serving-apt/tensorflow-serving.release.pub.gpg | apt-key add -

RUN apt-get update && apt-get install tensorflow-model-server

ADD . /developer
LABEL maintainer="jeffreykeatingthompson@gmail.com"

