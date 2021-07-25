FROM python:3-buster

ENV TERM=xterm-256color

RUN pip install \
  Django~=3.2.5 \
  psycopg2~=2.9.1 \
  uWSGI~=2.0.19.1

# create neccessary directories for mount
RUN mkdir -p /var/log/app
RUN mkdir -p /var/run/app
RUN mkdir -p /srv/app

COPY ./ /app

WORKDIR /app/django
EXPOSE 80
