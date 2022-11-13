FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-devel

RUN mkdir /autocut
COPY ./ /autocut
WORKDIR /autocut

RUN apt update && \
    apt install -y git && \
    apt install -y ffmpeg

RUN pip install .