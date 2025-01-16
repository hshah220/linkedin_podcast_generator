FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip\
    git\
    python3-yaml\
    && rm -rf /var/lib/apt/lists/*
    
RUN python3 -m pip install --upgrade pip
#RUN wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && rm get-pip.py
#RUN pip3 install --no-cache-dir pyyaml

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
