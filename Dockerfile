FROM python:3.8.3-buster

RUN mkdir /var/lib/django

COPY ./requirements.txt /var/lib/django/requirements.txt
COPY ./mysite /var/lib/django/mysite

WORKDIR /var/lib/django

RUN pip install -r requirements.txt

WORKDIR /var/lib/django/mysite

CMD python manage.py runserver $PORT

