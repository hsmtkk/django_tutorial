FROM python:3.8.3-buster

RUN mkdir /var/lib/django

COPY Pipfile /var/lib/django/Pipfile
COPY ./mysite /var/lib/django/mysite

WORKDIR /var/lib/django

RUN pip install pipenv \
 && pipenv install

WORKDIR /var/lib/django/mysite

CMD pipenv run python manage.py runserver $PORT

