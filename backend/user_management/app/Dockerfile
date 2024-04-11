FROM python:slim-bullseye

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y libpq-dev gcc netcat

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy the entrypoint script
COPY ./conf/start_django_app.sh .
RUN chmod +x start_django_app.sh

COPY . .

EXPOSE 8000

ENTRYPOINT ["sh", "./conf/start_django_app.sh"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]