FROM python:3.6

WORKDIR /server

COPY requirements.txt /server
RUN pip3 install -r requirements.txt

COPY /src/server.py /server

EXPOSE 5000

CMD ["python3", "server.py"]