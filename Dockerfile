FROM python:3.12-slim-bullseye
# FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt --no-cache-dir --verbose

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
# CMD ["gunicorn", "aqua_gas.wsgi:application", "--bind", "0.0.0.0:$PORT"]
# CMD ["sh", "-c", "gunicorn aqua_gas.wsgi:application --bind 0.0.0.0:${PORT:-8000}"]
