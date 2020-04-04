FROM python:3.6

COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

COPY /src /app

WORKDIR /app

EXPOSE 5000

CMD ["python3", "client.py"]