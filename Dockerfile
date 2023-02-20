FROM python:3.10-slim-buster

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt-get update && apt-get install --no-install-recommends -y \
  build-essential \
    libmagic-dev



RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . /code

ENTRYPOINT ["bash","entrypoint"]

CMD [ "python3", "main.py" ]