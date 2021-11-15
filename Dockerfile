FROM python:3.8.5-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# COPY ./django_project /app
COPY . /var/www/django
WORKDIR /var/www/django

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]