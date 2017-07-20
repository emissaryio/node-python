FROM node:6.10.1-slim

RUN apt-get update && apt-get install -y \
    git \
    python-dev \
    build-essential \

    # libxml
    libxml2-dev \
    libxslt-dev \

    # cryptography
    libssl-dev \
    libffi-dev \

    # MySQL-python
    libmysqlclient-dev \

    && curl -s https://bootstrap.pypa.io/get-pip.py | python - \
    && pip install --no-cache-dir virtualenv

