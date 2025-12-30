FROM python:3.12-alpine

WORKDIR /src

COPY /src/main.py .

CMD ["python3", "main.py"]