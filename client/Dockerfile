FROM python:3.6

WORKDIR /client

COPY requirements.txt /client
RUN pip3 install -r requirements.txt

COPY /src/client.py /client

EXPOSE 5000

CMD ["python3", "client.py"]