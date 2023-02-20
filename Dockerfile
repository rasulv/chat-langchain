FROM python:3.10-slim-buster

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt-get update && apt-get install --no-install-recommends -y \
  # dependencies for building Python packages
  build-essential \
    libmagic-dev



RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . /code


CMD [ "python3", "main.py" ]