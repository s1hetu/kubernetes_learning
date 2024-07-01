FROM python:3.9

WORKDIR /code

ADD test ./test

COPY main.py .

CMD python main.py