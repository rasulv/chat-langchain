FROM python:3.10-slim-buster

WORKDIR .

COPY ./requirements.txt ./requirements.txt

RUN apt-get update && apt-get install --no-install-recommends -y \
  build-essential \
    libmagic-dev



RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

ENTRYPOINT ["bash","entrypoint"]

CMD [ "python3", "main.py" ]