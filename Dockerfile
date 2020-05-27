FROM python:3.8.3-buster

RUN mkdir /var/lib/django

COPY Procfile /var/lib/django/Procfile
COPY ./mysite /var/lib/django/mysite

WORKDIR /var/lib/django

RUN pipenv install

WORKDIR /var/lib/django/mysite

ENTRYPOINT ["python", "manage.py", "runserver", $PORT]
